import 'package:flutter/material.dart';
import 'package:scarlett_app/main.dart';
import 'package:scarlett_app/provider/scarlett_provider.dart';
import 'package:scarlett_app/screens/scarlett_store_details.dart';
import 'package:scarlett_app/utils/colors.dart';
import 'package:scarlett_app/widgets/stragged_dual_view.dart';

class ScarlettStoreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = ScarlettProvider.of(context).bloc;
    return Container(
      color: backgroundColor,
      padding: const EdgeInsets.only(top: cartBarHeight, left: 10, right: 10),
      child: StaggeredDualView(
        aspectRatio: 0.82,
        itemPercent: 0.25,
        spacing : 20,
        itemBuilder: (context, index){
          final product = bloc.catalog[index];
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: Duration(milliseconds: 500),
                    pageBuilder: (context, animation, __) {
                    return FadeTransition(
                        opacity: animation,
                        child: ScarlettStoreDetails(
                          product : product,
                          onProductAdded: (){
                            bloc.addProduct(product);
                          }
                        ),
                    );
                    },
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              elevation: 10,
              shadowColor: Colors.black45,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Hero(
                        tag: 'list_${product.name}',
                        child: Center(
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '\Rp' + product.price.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      product.name,
                      style : TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      )
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      product.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: bloc.catalog.length,
      ),
    );
  }
}
