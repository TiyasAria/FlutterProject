import 'package:flutter/material.dart';
import 'package:simple_app_state_management/model/cart_model.dart';
import 'package:simple_app_state_management/model/catalog_model.dart';
import 'package:provider/provider.dart';

class Mycatalog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _MyAppBar(),
          const SliverToBoxAdapter(
            child: SizedBox(height: 12),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => _MyListItem(index)
            ),
          )
        ],
      ),
    );
  }
}

class _MyListItem extends StatelessWidget {
  final int index;

  const _MyListItem(
      this.index,
  {Key key}
      ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // variable ini digunakan untuk memanggil si providernya , dan untuk method select ini merupakan bagian dari provider
    var item = context.select<CatalogModel, Item>(
        (catalog) => catalog.getByPosition(index),
    );

    var textTheme = Theme.of(context).textTheme.headline6;

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
          maxHeight: 48,
        child: Row(
          children: [
            AspectRatio(aspectRatio: 1,
            child: Container(
              color: item.color,
            ),
            ),
            SizedBox(
              width : 24
            ),
            Expanded(
              child: Text(item.name , style : textTheme),
            ),
            SizedBox(
                width : 24
            ),
            _AddButton(item : item)
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget{
  final Item item;

  const _AddButton({
    @required this.item, Key key
}) : super(key:key);
  @override
  Widget build(BuildContext context) {

    var isInCart = context.select<CartModel , bool>(
        (cart) => cart.items.contains(item)
    );

    return TextButton(
        onPressed: isInCart ? null : (){
    //       jadi ini text yang kita gunakan untuk add item ke cart nya ,
    //  untuk callbacknya gunakan metrod read(baca data), dijalankan setiap kali user menekan tombol dan dieksekusi diluar method build
      var cart = context.read<CartModel>();
      cart.add(item);
    },
    style: ButtonStyle(
    overlayColor: MaterialStateProperty.resolveWith<Color>(
    (states){
      if(states.contains(MaterialState.pressed)){
        return Theme.of(context).primaryColor;
    }
      return null;
    })
    ),
    child: isInCart
          ? Icon(Icons.check, semanticLabel : 'Added')
        : Text('add'),
    );
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.headline1,),
      floating: true,
      actions: [
        IconButton(
            icon: Icon(Icons.shopping_cart), 
            onPressed: ()=> Navigator.pushNamed(context, '/cart'))
      ],
    );
  }

}
