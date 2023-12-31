import 'package:flutter/material.dart';

import '../model/list_item.dart';

class ListDetailScreen extends StatelessWidget {
  static const routeName = '/list_detail';
  //final ListItem item;
  //ListDetailScreen(this.item);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context).settings.arguments as ListItem;
    return Scaffold(
      appBar: AppBar(
        title: Text(item.naslov),
      ),
      body: Column(children: [
        Text(item.naslov),
        Text("${item.datum.toString()} ${item.vreme.format(context)}"),
        Text(item.opis),
      ]),
    );
  }
}
