import 'package:flutter/material.dart';
import 'package:food_app/models/catalog.dart';
import 'package:food_app/widgest/drawer.dart';
import 'package:food_app/widgest/item_widget.dart';
class HomePage extends StatelessWidget {
  final int days =30;
  final String name ="sharad kharade";
  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index){
            return ItemWidget(
              item: dummylist[index],
            );
            },
          ),
        ),

      drawer: MyDrawer(),
    );
    }
}