import 'package:flutter/material.dart';
import 'ItemTile.dart';
import 'CartSection.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('E-Electronics'),
          actions: [
            ElevatedButton(onPressed:(){

            },
              child: const Text('Your Cart'),
            )
          ],
        ),
        body:ImageGrid(),
      ),
    );
  }
}

