import 'package:flutter/material.dart';
import 'package:servplatform/core/constant/view_routes.dart';
import 'package:servplatform/core/models/service/service.dart';

class ServiceTile extends StatelessWidget {
  final Service service;

  const ServiceTile({Key key, @required this.service}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      child: ListTile(
        title: Text(service.service??'default value',
          style: textTheme.subhead.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(service.percentage_match??'10',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        isThreeLine: true,
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.of(context).pushNamed(
            ViewRoutes.service_details,
            arguments: service,
          );
        },
      ),
    );
  }
}
