import 'dart:core';

import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class Application {
  static final Algolia algolia = Algolia.init(
      applicationId: "4G14T29E29", apiKey: "fee95dde1d83700139a669fa893");
}

Algolia algolia = Application.algolia;

class NewData {
  String serviceProvider;

  NewData({this.serviceProvider, this.serviceType, this.price});

  String serviceType;
  int price;
}

List<NewData> newData = [
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Cleaning1', price: 150),
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Cleaning2', price: 150),
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Cleaning3', price: 150),
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Haircut1', price: 100),
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Haircut2', price: 100),
  NewData(serviceProvider: 'Urban Clap', serviceType: 'Haircut3', price: 100),
];

class _SearchFieldState extends State<SearchField> {
  @override
  void initState() /*async*/ {
    // TODO: implement initState
    super.initState();
//    for (int i = 0; i < newData.length; i++) {
//      Map<String, dynamic> adddata = {/**/
//        'serviceProvider': newData[i].serviceProvider,
//        'serviceType': newData[i].serviceType,
//        'price': newData[i].price,
//      };
//
//      AlgoliaTask taskAdded =
//          await algolia.instance.index('serv').addObject(adddata);
//      print(taskAdded.data);
//    }
  }

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
    AlgoliaQuery searchQuery =
        algolia.instance.index("Providers").search(query);
    return Column(
      children: <Widget>[
        FutureBuilder(
          future: searchQuery.getObjects(),
          builder: (BuildContext context,
              AsyncSnapshot<AlgoliaQuerySnapshot> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(
                  child: Text("Loading...."),
                );
                break;
              default:
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Error"),
                  );
                } else {
                  return ListView.separated(
                    itemBuilder: (context, index) {
                      final AlgoliaObjectSnapshot result =
                          snapshot.data.hits[index];
                      return ListTile(
                        title: Text(
                          result.data['serviceProvider'],
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(result.data['country']),
                      );
                    },
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                    ),
                    itemCount: snapshot.data.hits.length,
                  );
                }
            }
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Center(child: CircularProgressIndicator());
  }
}
