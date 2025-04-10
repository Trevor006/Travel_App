import 'package:flutter/material.dart';
import 'package:travel_app/widgets/image.dart';
import 'package:travel_app/widgets/search.dart';
import 'package:travel_app/widgets/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(flex: 2, child: CustomSearchBar()),

          Expanded(
            flex: 5,
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
      
              ],
            ),
          ),
        ],
      ),
    );
  }
}
