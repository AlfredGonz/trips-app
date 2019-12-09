import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trips App',
      home: Scaffold(
        appBar: AppBar(
    title: Text('Trips App')
    ),
    body: DescriptionPlace(),
    )
    );
  }
}
