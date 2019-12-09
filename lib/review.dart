import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name = 'Varuna Yasas';
  String details = '1 review 5 photos';
  String comment = 'There is an amazing place in Sri Lanka';


  Review(this.pathImage, this.name, this.details, this.comment);

  get title_stars => DescriptionPlace;

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(name,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 17.0,
        fontFamily: 'Lato'
      )),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Row(
        children: <Widget>[
          Text(details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: 'Lato',
                color: Color(0xFFa3a5a7)
              )),
          title_stars,
        ],
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(details,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 13.0,
              fontFamily: 'Lato',
            fontWeight: FontWeight.w900
          )),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userComment
      ],
    );
  }
}
