import 'package:flutter/material.dart';

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
      child: Column(children: <Widget>[
                
             ],),
    );
  }
}
