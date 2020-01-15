import 'package:flutter/material.dart';
import 'package:trips_app/home_trips.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';

class AlTrips extends StatefulWidget {
  @override
  _AlTripsState createState() => _AlTripsState();
}

class _AlTripsState extends State<AlTrips> {
  int index = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped (int indextap) {
        setState(() {
          index = indextap;
        });
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: 
      widgetsChildren[index],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.purple
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          onTap: onTapTapped,
          items: [
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