import 'package:flutter/material.dart';
import 'package:travel_app/pages/homepage.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/icons.dart';
import 'package:travel_app/widgets/image.dart';
import 'package:travel_app/widgets/search.dart';
import 'package:travel_app/widgets/svg.dart';
import 'package:travel_app/widgets/text.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key, required this.title});

  final String title;

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.white,
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          ElevatedButton(
            
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Homepage"),
                ),
              );
            },
            child: Icon(Icons.arrow_back),
          ),

          Expanded(
            flex: 9,
            child: ImageWidget(
              imagePath: "../assets/images/image.png",
              imageVariant: "large",
            ),
          ),

          Expanded(
            flex: 5,
            child: Column(
              children: <Widget>[
                TextWidget(
                  displayText: "Lempuyang Temple",
                  styleVariant: "bold",
                ),
                TextWidget(
                  displayText: "South C, Kenya . 200km",
                  styleVariant: "notBold",
                ),
                Row(
                  children: <Widget>[
                    TextWidget(displayText: "KSH 250", styleVariant: "bold"),
                    TextWidget(
                      displayText: " per night",
                      styleVariant: "light",
                    ),
                  ],
                ),
                ButtonWidget(title: "Book Now", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
