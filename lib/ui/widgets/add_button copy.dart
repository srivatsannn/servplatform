import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:servplatform/core/models/service/service.dart';
//import 'package:real_rich_text/real_rich_text.dart';


class AddButton extends StatelessWidget {
  final Function onAddButton;
  final Service service;


  const AddButton({Key key, @required this.onAddButton,@required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return 
    MaterialButton(
                        onPressed: (){},
                        textColor: Colors.black,
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          width: 88,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 8,
                                  offset: Offset(0, 15),
                                  color: Colors.grey.withOpacity(.6),
                                  spreadRadius: -9,
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.add),
                              SizedBox(
                                width: 6,
                              ),
                              //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                              //Text('\$'),
                              Text('\$ ${service.price}'),
                                
                            ],
                          ),
                        ),
                      );

    
    
  }
}
