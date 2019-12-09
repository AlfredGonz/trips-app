import 'package:flutter/material.dart';
import 'package:trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/img/people.jpg', 'Varuna Yasas', '1 review 5 photos', 'Excelente app'),
        Review('assets/img/ann.jpg', 'Anahí Salgado', '2 review 10 photos', 'La mejor app para viajar'),
        Review('assets/img/girl.jpg', 'Gissele Thomas', '2 review 8 photos', 'Encantada de la app')
      ],

    );
  }
}
