import 'package:cozy_app/pages/home.dart';
import 'package:flutter/material.dart';

import '../utils/theme.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/404.png',
                width: 300),
              SizedBox(height: 70),
              Text('Where are you going?', style: blackTextStyle.copyWith(fontSize: 24)),
              SizedBox(height: 14),
              Text('Seems like the page that you were \nrequested is already gone',
                  style: greyTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,),
              SizedBox(height: 50),
              Container(
                width: 210,
                height: 50,
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                            (route) => false);
                  },
                  color: purpleColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17)
                  ),
                  child: Center(
                      child: Text('Back to Home', style: whiteTextStyle.copyWith(fontSize: 18)
                      )
                  ),
                ),
              ),
              // SizedBox(height: 236),
            ],
          ),
        ),
      ),
    );
  }
}
