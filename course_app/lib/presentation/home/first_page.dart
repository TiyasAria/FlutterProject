
import 'package:course_app/presentation/home/second_page.dart';
import 'package:course_app/provider/example_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {

    return Consumer<ExampleProvider>(
      builder: (BuildContext context, exampleProvider, _) =>
     Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
               exampleProvider.getDataString, style: TextStyle(
                fontSize: 30,
              ),
              ),
              ElevatedButton(onPressed: (){
                exampleProvider.setDataString('0');
                Navigator.push(context, MaterialPageRoute(builder: (context) => SeconPage()));
              }, child: Text(
                'Go to Second Page '
              ))
            ],
          ),

        ),
      ),
    );
  }
}
