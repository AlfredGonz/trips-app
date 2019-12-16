import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  final descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      "\n\n "
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trips App',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  DescriptionPlace("Bahamas", 4, descriptionDummy),
                  ReviewList()
                ],
              ),
              HeaderAppBar(),
            ],
          ),
        ));
  }
}
