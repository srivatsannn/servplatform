import 'dart:core';

import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  //final TextEditingController searchControl;

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class Application {
  static final Algolia algolia = Algolia.init(
      applicationId: "4G14T29E29", apiKey: "fee95dde1d83700139a669fa893");
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        showSearch(context: context, delegate: _searchBarDelegate());
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        child: IgnorePointer(
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
        ),
      ),
    );
  }
}

class _searchBarDelegate extends SearchDelegate {
  Algolia algolia = Application.algolia;

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    AlgoliaQuery newQuery = algolia.instance.index("Providers").search(query);
    print(newQuery.setFacetFilter('status:published'));
    print(newQuery.setFacetFilter('isDelete:false'));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(query),
        Text(newQuery.setFacetFilter('status:published').toString()),
        Text(newQuery.setFacetFilter('isDelete:false').toString()),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Center(child: CircularProgressIndicator());
  }
}
