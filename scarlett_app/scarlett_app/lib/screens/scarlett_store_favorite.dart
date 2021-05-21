

import 'package:flutter/material.dart';
import 'package:scarlett_app/provider/scarlett_provider.dart';

class ScarlettStoreFavorite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final bloc = ScarlettProvider.of(context).bloc;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Favorite',
                    style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: bloc.favorite.length,
                        itemBuilder: (context, index){
                        final item = bloc.favorite[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: Row(
                            children : [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(item.product.image),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              Expanded(
                                child: Text(
                                  item.product.name,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color:Colors.white),
                                onPressed: (){
                                  bloc.deleteProduct(item);
                                },
                              )
                            ],
                          ),
                        );
                        }
                    ),
                  ),
                ],
              ),
        ),
        ),
      ],
    );
  }
}
