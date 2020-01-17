import 'dart:core';

import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/models/service/service.dart';
import 'package:servplatform/ui/widgets/add_button.dart';
//import 'package:real_rich_text/real_rich_text.dart';


 class SearchField extends StatelessWidget {
  //final TextEditingController searchControl;

  SearchField();
  

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
            elevation: 1.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: TextField(
                style: textTheme.caption,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.white,),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  hintText: "",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(
                    Icons.filter_list,
                    color: Colors.grey,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey,
                  ),
                ),
                maxLines: 1,
                //controller: searchControl,
              ),
            ),
          );
  }
}
