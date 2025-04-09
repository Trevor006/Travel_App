import 'package:flutter/material.dart';
import 'package:travel_app/widgets/image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageWidget(imagePath: "../assets/images/image.png", imageVariant: "large"),
            const Text('You have pushed the button this many times:'),
            Text(
              'Yellow!',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        ],
        
      ),
      
    );
  }
}
