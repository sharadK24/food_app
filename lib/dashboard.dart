import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food App Dashboard'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to the Food App!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
