import 'package:flutter/material.dart';
import 'package:trips_app/al_trips.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trips App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: AlTrips());
  }
}
