import 'package:servplatform/core/constant/auth_exception_messages.dart';
import 'package:servplatform/core/exceptions/auth_exception.dart';
import 'package:servplatform/core/services/auth/auth_service.dart';
import 'package:servplatform/core/services/key_storage/key_storage_service.dart';
import 'package:servplatform/locator.dart';

class AuthServiceImpl implements AuthService {
  final _keyStorageService = locator<KeyStorageService>();

  @override
  Future<void> signUpWithEmailPassword(
    String email,
    String password,
    String displayName,
  ) async {
    try {
      await Future.delayed(Duration(milliseconds: 250));
      _keyStorageService.hasLoggedIn = true;
    } on Exception catch (_) {
      throw AuthException(AuthExceptionMessages.general);
    }
  }

  @override
  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      await Future.delayed(Duration(milliseconds: 250));
      _keyStorageService.hasLoggedIn = true;
    } on Exception catch (_) {
      throw AuthException(AuthExceptionMessages.general);
    }
  }
}
