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

    return  Container(
      padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: TextField(
          style: textTheme.caption,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: Colors.grey[400],
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey[400],
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: "",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[400],
            ),
            suffixIcon: Icon(
              Icons.filter_list,
              color: Colors.grey[400],
            ),
            hintStyle: TextStyle(
              fontSize: 15.0,
              color: Colors.grey[400],
            ),
          ),
          maxLines: 1,
          //controller: searchControl,
        ),
      );
  
  }
}
