import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//widget saat error
Widget errorHandleWidget(String error) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Check Your Connection',
            style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold))
      ],
    ),
  );
}

//saat loading
Widget loadingWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          height: 25.0,
          width: 25.0,
          child: CupertinoActivityIndicator(),
        )
      ],
    ),
  );
}
