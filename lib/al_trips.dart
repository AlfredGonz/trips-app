import 'package:flutter/material.dart';

class AlTrips extends StatefulWidget {
  @override
  _AlTripsState createState() => _AlTripsState();
}

class _AlTripsState extends State<AlTrips> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('')
          )
        ]),
      ),
        );
  }
}