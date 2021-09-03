import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false ;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){
          setState(() {
            isFavorite = ! isFavorite;
          });
        },
        icon: Icon(
           isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,

    //       if (isFavorite) {
    //   Icons.favorite
    // } else {
    //   Icons.favorite_border
    // }
        )
    );
  }
}
