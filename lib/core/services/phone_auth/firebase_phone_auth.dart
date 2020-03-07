import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/core/services/navigation/navigation_service.dart';
import 'package:servplatform/core/services/phone_auth/auth.dart';

import '../../../locator.dart';

enum PhoneAuthState {
  Started,
  CodeSent,
  CodeResent,
  Verified,
  Failed,
  Error,
  AutoRetrievalTimeOut
}

class FirebasePhoneAuth {
  static FirebaseUser mUser;
  static KeyStorageService keyStorageService;
  static var _authCredential, actualCode, phone, status;
  static  NavigationService _navigationService = locator<NavigationService>();

  static StreamController<String> statusStream = StreamController.broadcast();
  static StreamController<PhoneAuthState> phoneAuthState =
      StreamController.broadcast();
  static Stream stateStream = phoneAuthState.stream;

  static instantiate({String phoneNumber}) async {
    assert(phoneNumber != null);
    phone = phoneNumber;
    print(phone);
    startAuth();
  }

  static dispose() {
//    statusStream.close();
//    phoneAuthState.close();
  }

  static startAuth() {
    statusStream.stream
        .listen((String status) => print("PhoneAuth: " + status));
    addStatus('Phone auth started');
    FireBase.auth
        .verifyPhoneNumber(
            phoneNumber: phone.toString(),
            timeout: Duration(seconds: 60),
            verificationCompleted: verificationCompleted,
            verificationFailed: verificationFailed,
            codeSent: codeSent,
            codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
        .then((value) {
      addStatus('Code sent');
    }).catchError((error) {
      addStatus(error.toString());
    });
  }

  static final PhoneCodeSent codeSent =
      (String verificationId, [int forceResendingToken]) async {
    actualCode = verificationId;
    addStatus("\nEnter the code sent to " + phone);
    addState(PhoneAuthState.CodeSent);
  };

  static final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
      (String verificationId) {
    actualCode = verificationId;
    addStatus("\nAuto retrieval time out");
    addState(PhoneAuthState.AutoRetrievalTimeOut);
  };

  static final PhoneVerificationFailed verificationFailed =
      (AuthException authException) {
    addStatus('${authException.message}');
    addState(PhoneAuthState.Error);
    if (authException.message.contains('not authorized')) {
      addStatus('App not authroized');
    } else if (authException.message.contains('Network')) {
      addStatus('Please check your internet connection and try again');
    } else {
      addStatus('Something has gone wrong, please try later ' +
          authException.message);
    }
  };

  static final PhoneVerificationCompleted verificationCompleted =
      (AuthCredential auth) {
    addStatus('Auto retrieving verification code');

    FireBase.auth.signInWithCredential(auth).then((AuthResult value) {
      if (value.user != null) {
        mUser = value.user;
        addStatus(status = 'Authentication successful');
        addState(PhoneAuthState.Verified);
        onAuthenticationSuccessful();
      } else {
        addState(PhoneAuthState.Failed);
        addStatus('Invalid code/invalid authentication');
      }
    }).catchError((error) {
      addState(PhoneAuthState.Error);
      addStatus('Something has gone wrong, please try later $error');
    });
  };

  static void signInWithPhoneNumber({String smsCode}) async {
    _authCredential = PhoneAuthProvider.getCredential(
        verificationId: actualCode, smsCode: smsCode);

    await FireBase.auth
        .signInWithCredential(_authCredential)
        .then((AuthResult result) async {
      mUser = result.user;
      addStatus('Authentication successful');
      addState(PhoneAuthState.Verified);
      onAuthenticationSuccessful();
    }).catchError((error) {
      addState(PhoneAuthState.Error);
      addStatus(
          'Something has gone wrong, please try later(signInWithPhoneNumber) $error');
    });
  }

  static onAuthenticationSuccessful() async {
    //  TODO: handle authentication successful
//    keyStorageService.hasLoggedIn = true;
    await (_navigationService.pushReplacementNamed(ViewRoutes.main));
  }

  static addState(PhoneAuthState state) {
    print(state);
    phoneAuthState.sink.add(state);
  }

  static void addStatus(String s) {
    statusStream.sink.add(s);
    print(s);
  }

}
