import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_state_management/model/cart_model.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('cart', style: Theme.of(context).textTheme.headline1,),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.yellow,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: _CartList(),
                ),
              ),
              Divider(height: 4, color: Colors.black,),
              _CartTotal()
            ],
          ),
        ),
      );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var hugeStyle =
        Theme.of(context).textTheme.headline1.copyWith(fontSize: 48);
    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CartModel>(
              builder: (BuildContext context, cart, _) =>
              Text('\$${cart.totalPrice}', style: hugeStyle,),
            ),
            SizedBox(width: 24),
            TextButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Buying yok'))
                  );
                },
                style:TextButton.styleFrom(primary: Colors.white),
                child: Text('buy'))
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var itemNameStyle = Theme.of(context).textTheme.headline6;
    //method watch ini diambil dari provider
    var cart = context.watch<CartModel>();
    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder:(context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: (){
            cart.remove(cart.items[index]);
          },
        ),
        title: Text(
          cart.items[index].name,
          style: itemNameStyle,
        ),
      ),
    );
  }

}