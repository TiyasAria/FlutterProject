import 'package:cozy_app/model/recommend.dart';
import 'package:cozy_app/pages/favorite_page.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {

  const FavoriteButton(
      {
      @required this.recommend,
        this.onProductAdded
        }
      );
  final Recommend recommend;
  final VoidCallback onProductAdded;

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  String heroTag = '';

  void _addToFavorite(BuildContext context) {
    setState(() {
      heroTag = 'details';
      // ignore: unnecessary_statements
      isFavorite = !isFavorite;
    });
    widget.onProductAdded();
    Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
  }


  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
        ),
      ),
      IconButton(icon: Icon( isFavorite ? Icons.favorite :
            Icons.favorite_border,
          color: Colors.red),
          onPressed: () => _addToFavorite(context),
          padding: EdgeInsets.only(bottom: 6, right: 7))
    ],
    );
  }
}
