import 'package:flutter/material.dart';
import 'package:travel_app/pages/destination.dart';
import 'package:travel_app/widgets/image.dart';
import 'package:travel_app/widgets/search.dart';
import 'package:travel_app/widgets/svg.dart';
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
      padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Expanded(flex: 2, child: CustomSearchBar()),

          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SvgButtonWidget(assetPath: "./assets/icons/Vector.svg"),
                SvgButtonWidget(assetPath: "./assets/icons/beach.svg"),
                SvgButtonWidget(assetPath: "./assets/icons/swimming.svg"),
                SvgButtonWidget(assetPath: "./assets/icons/island.svg"),
                SvgButtonWidget(assetPath: "./assets/icons/building.svg"),
              ],
            ),
          ),

          Expanded(
            flex: 9,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DestinationPage(title: "Destinations"),
                  ),
                );
              },
              child: ImageWidget(
                imagePath: "./assets/images/image.png",
                imageVariant: "large",
              ),
            ),
          ),

          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
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
