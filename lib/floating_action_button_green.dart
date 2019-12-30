import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _isFavorite = false;
  void onPressedFav() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    Scaffold.of(context).showSnackBar(SnackBar(
      content: _isFavorite
          ? Text('Agregaste a tus Favoritos')
          : Text('Eliminaste de tus Favoritos'),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
    );
  }
}
