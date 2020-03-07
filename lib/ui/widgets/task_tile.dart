import 'dart:core';
import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/models/task/task.dart';
import 'package:servplatform/ui/widgets/add_button.dart';
//import 'package:real_rich_text/real_rich_text.dart';

class TaskTile extends StatelessWidget {
  final Task task;
  final Function onTap;
  const TaskTile({
    Key key,
    @required this.task,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(4.0),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade100,
                        spreadRadius: 0.1,
                        blurRadius: 25.0,
                        offset: Offset(0.0, 1.0)),
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 0.1,
                        blurRadius: 25.0,
                        offset: Offset(0.0, 1.0))
                  ]),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  /*child: Image.network(
                    task.logo_url,
                    width: 50.0,
                    height: 50.0,
                  )*/)),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(task.customer_email, style: textTheme.subtitle),
          ],
        ),
        subtitle: Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: RichText(
              text: TextSpan(
                style: textTheme.caption,
                children: [
                  TextSpan(text: '11:20 PM'),
                  TextSpan(text: ' · '),
                   WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: Icon(Icons.flash_on),
                  ),
                ), 
                  TextSpan(
                      text: '${task.longitude}',
                      style: textTheme.caption.copyWith(
                        color: Colors.green,
                      )),
                ],
              ),
            )),
        trailing: Container(
          width: 80,
          child: AddButton(
              //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
              //Text('\$'),
              //Text('\$ ${model.service.price}',

              onTap: () {},
              onUpdateQuantity: (value) {},
              onRemove: () {},
              text: '\$ ${task.customer_username}',
             is_multiple: task.agents,
              initialValue: 1),
        ),
        onTap: () {
          Navigator.of(context).pushNamed(
            ViewRoutes.provider_page,
            arguments: task,
          );
        },
      ),
    );
  }
}
