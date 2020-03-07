import 'package:flutter/material.dart';
import 'package:servplatform/ui/widgets/add_button.dart';

class ProviderHomeList extends StatefulWidget {
  @override
  _ProviderHomeListState createState() => _ProviderHomeListState();
}

class _ProviderHomeListState extends State<ProviderHomeList> {
  int _itemCount = 0;

  String url =
      "https://png.pngtree.com/png-vector/20190521/ourlarge/pngtree-skull-demon-head-black-white-hand-drawing-vector-png-image_1043333.jpg";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliverList(
        delegate: SliverChildListDelegate(
          [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  url,
                  height: 90.0,
                  width: 100.0,
                ),
              ),
              title: Text('Haircut & Shave'),
              subtitle: Text(
                'Disposable setup...',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    child: AddButton(
                        //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                        //Text('\$'),
                        // Text('\$ ${model.service.price}',

                        onTap: () {},
                        onUpdateQuantity: (value) {},
                        onRemove: () {},
                        text: '\$ 6.99',
                        is_multiple: _itemCount.toString(),
                        initialValue: 1),
                  ),
                  Text('More variants inside',
                      style: TextStyle(color: Colors.grey, fontSize: 12.0))
                ],
              ),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  url,
                  height: 90.0,
                  width: 100.0,
                ),
              ),
              title: Text('Shave'),
              subtitle: Text(
                'Disposable setup...',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Container(
                width: 80,
                child: AddButton(
                    //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                    //Text('\$'),
                    // Text('\$ ${model.service.price}',

                    onTap: () {},
                    onUpdateQuantity: (value) {},
                    onRemove: () {},
                    text: '\$ 63.99',
                    is_multiple: _itemCount.toString(),
                    initialValue: 1),
              ),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  url,
                  height: 90.0,
                  width: 100.0,
                ),
              ),
              title: Text('Facial'),
              subtitle: Text(
                'Disposable setup...',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Container(
                width: 80,
                child: AddButton(
                    //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                    //Text('\$'),
                    // Text('\$ ${model.service.price}',

                    onTap: () {},
                    onUpdateQuantity: (value) {},
                    onRemove: () {},
                    text: '\$ 6',
                    is_multiple: _itemCount.toString(),
                    initialValue: 1),
              ),
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  url,
                  height: 90.0,
                  width: 100.0,
                ),
              ),
              title: Text('UrbanClap'),
              subtitle: Text(
                'Disposable setup...',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Container(
                width: 80,
                child: AddButton(
                    //TODO once currency symbol variable is added Text("${service.currency} ${service.price}"),
                    //Text('\$'),
                    // Text('\$ ${model.service.price}',

                    onTap: () {},
                    onUpdateQuantity: (value) {},
                    onRemove: () {},
                    text: '\$ 63',
                    is_multiple: _itemCount.toString(),
                    initialValue: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
