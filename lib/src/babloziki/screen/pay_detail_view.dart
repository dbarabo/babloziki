import 'package:flutter/material.dart';

class PayDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Платежи',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ListView.builder(itemCount: 0, itemBuilder: (context, index) => null));
  }
}
