import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/models/catalog.dart';
import 'package:food_app/widgest/drawer.dart';
import 'package:food_app/widgest/item_widget.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days =30;

  final String name ="sharad kharade";

  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData()async {
    final catalogJson = await rootBundle.loadString("asset/files/catalog.json");
    final decodedData = jsonDecode("catalog.json");
    var productData = decodedData["products"];
    print(productData);

  }

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