import 'package:flutter/material.dart';
import 'package:scarlett_app/model/scarlett_products.dart';
import 'package:scarlett_app/utils/colors.dart';

import 'favorite.dart';


class ScarlettStoreDetails extends StatefulWidget {
  const ScarlettStoreDetails(
      {Key key,
      @required this.product,
      this.onProductAdded
      }) : super(key: key);

  final ScarlettProduct product;
  final VoidCallback onProductAdded;

  @override
  _ScarlettStoreDetailsState createState() => _ScarlettStoreDetailsState();
}

class _ScarlettStoreDetailsState extends State<ScarlettStoreDetails> {
  String heroTag = '';

  void _addToFavorite(BuildContext context) {
    setState(() {
      heroTag = 'details';
    });
    widget.onProductAdded();
    Navigator.of(context).pop();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Hero(
                      tag: 'list_${widget.product.name}$heroTag',
                      child: Image.asset(
                        widget.product.image,
                        fit: BoxFit.contain,
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                    ),
                    Text(
                      widget.product.name,
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      widget.product.left,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          '\Rp ${widget.product.price}',
                          style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'Info Produk',
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.product.description,
                      style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    color: Colors.pink[200],
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        children: <Widget>[
                          FavoriteButton(),
                          Text(
                            'Tambahkan ke Favorit',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    onPressed: () => _addToFavorite(context),
                  ),
                ),
              ],
            ),         )
        ],
      ),
    );
  }
}
