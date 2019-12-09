import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  final descriptionDummy =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
      "\n\n "
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionDummy,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text('Duwili Ella',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.left),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        )
      ],
    );
    return Column(
      children: <Widget>[title_stars, description],
    );
  }
}
