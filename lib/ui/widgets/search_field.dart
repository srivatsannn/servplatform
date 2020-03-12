import 'dart:core';

import 'package:algolia/algolia.dart';
import 'package:flutter/material.dart';

import 'add_button.dart';

class SearchField extends StatefulWidget {
  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class Application {
  static final Algolia algolia = Algolia.init(
      applicationId: "4G14T29E29", apiKey: "5561cf16527b083f41b1c7df82e5f81b");
}

Algolia algolia = Application.algolia;

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
          ),
        ),
      ),
    );
  }
}

class _searchBarDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    AlgoliaQuery searchQuery = algolia.instance.index("Test").search(query);
    print(query);
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
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        AlgoliaObjectSnapshot result =
                            snapshot.data.hits[index];
                        return ListTile(
                          title: Text(
                            result.data['Service'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Text(result.data['Service Provider']),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.grey,
                      ),
                      itemCount: snapshot.data.hits.length,
                    ),
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
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: <Widget>[
        FutureBuilder(
          future: algolia.instance.index("Test").getObjects(),
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
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        AlgoliaObjectSnapshot result =
                            snapshot.data.hits[index];
//                        return SearchServiceTile(
////                    key: Key('${model.services[index].id}'),
//                          result: result,
//                          onTap: null,
//                        );
                        return ListTile(
                          title: Text(
                            result.data['Service'],
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          subtitle: Row(
                            children: <Widget>[
                              Text(result.data['Service Provider']),
                              SizedBox(width: 10),
                              Text(
                                "\$" + result.data["Price"],
                                style: textTheme.caption
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                          leading: Column(
                            children: <Widget>[
                              Text("Provider"),
                              Text("Image"),
                            ],
                          ),
                          onTap: () {},
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.grey,
                      ),
                      itemCount: snapshot.data.hits.length,
                    ),
                  );
                }
            }
          },
        ),
      ],
    );
  }
}

class SearchServiceTile extends StatelessWidget {
  final AlgoliaObjectSnapshot result;
  final Function onTap;

  const SearchServiceTile({
    Key key,
    @required this.result,
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
                  offset: Offset(0.0, 1.0),
                ),
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 0.1,
                  blurRadius: 25.0,
                  offset: Offset(0.0, 1.0),
                )
              ],
            ),
//            child: ClipRRect(
//              borderRadius: BorderRadius.circular(8.0),
//              child: Image.network(
//                result.data["logo"],
//                width: 50.0,
//                height: 50.0,
//              ),
//            ),
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(result.data["Service"], style: textTheme.subtitle),
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
                TextSpan(
                  text: '98%Match',
                  style: textTheme.caption.copyWith(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
        trailing: Container(
          width: 80,
          child: AddButton(
            onTap: () {},
            onUpdateQuantity: (value) {},
            onRemove: () {},
            text: '\$ ${result.data["Price"]}',
//              is_multiple: result.data["is_multiple"],
            is_multiple: "true",
            initialValue: 1,
          ),
        ),
//        onTap: () {
//          Navigator.of(context).pushNamed(
//            ViewRoutes.provider_page,
////            TODO Navigate to service based on search results
//            arguments: result,
//          );
//        },
      ),
    );
  }
}
