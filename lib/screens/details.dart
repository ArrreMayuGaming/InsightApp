import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  @override
  DetailsPageState createState() => DetailsPageState();
}

class DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Details Page'),
      ),
      body: Center(
        child: Hero(
          tag: 'details',
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.orange, Colors.deepOrange],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight),
            ),
          ),
        ),
      ),
    );
  }
}
