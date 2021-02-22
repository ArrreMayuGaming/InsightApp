import 'package:flutter/material.dart';
import 'package:insight/screens/details.dart';
import 'package:insight/screens/mymainhome.dart';

class ICardISMAC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, a, b) => DetailsPage()));
          },
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Hero(
                tag: 'details',
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.orange, Colors.deepOrange],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/ismacColored/i.png',
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.5,
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 60,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Infrastructure',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              Text(
                'Combining extensive real-time domain \nknowledge  to deliver IT Infrastructure  \nsolutions  across various technologies.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
