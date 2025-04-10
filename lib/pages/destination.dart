import 'package:flutter/material.dart';
import 'package:travel_app/pages/homepage.dart';
import 'package:travel_app/widgets/button.dart';
import 'package:travel_app/widgets/image.dart';
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
      padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
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

          SizedBox(height: 20,),

          Expanded(
            flex: 6,
            child: ImageWidget(
              imagePath: "./assets/images/image.png",
              imageVariant: "large",
            ),
          ),

          SizedBox(height: 20,),

          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: <Widget>[
                TextWidget(
                  displayText: "Lempuyang Temple",
                  styleVariant: "bold",
                ),
                SizedBox(height: 10,),

                TextWidget(
                  displayText: "South C, Kenya . 200km",
                  styleVariant: "notBold",
                ),
                SizedBox(height: 10,),

                Row(
                  children: <Widget>[
                    TextWidget(displayText: "KSH 250", styleVariant: "bold"),
                    TextWidget(
                      displayText: " per night",
                      styleVariant: "light",
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),

                Divider(color: Colors.grey),
                    TextWidget(
                      displayText: "Description",
                      styleVariant: "bold",
                    ),

                    SizedBox(height: 10,),

                    TextWidget(
                      displayText:
                          "Lempuyang Temple is a Hindu temple located on the slopes of Mount Lempuyang in Bali, Indonesia. It is one of the oldest and most highly regarded temples on the island and is known for its series of ornate gates, each guarded by menacing demons and gods",
                      styleVariant: "light",
                    ),

                    SizedBox(height: 20,),
                ButtonWidget(title: "Book Now", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
