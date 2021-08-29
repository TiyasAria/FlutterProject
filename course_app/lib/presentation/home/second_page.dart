
import 'package:course_app/provider/example_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SeconPage extends StatefulWidget {
  const SeconPage({Key? key}) : super(key: key);

  @override
  _SeconPageState createState() => _SeconPageState();
}



class _SeconPageState extends State<SeconPage> {
  // make a var for hitungan
   int data = 0;

  @override
  Widget build(BuildContext context) {
    // make a var untuk si providernya
    final calculate = Provider.of<ExampleProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data.toString(), style: TextStyle(
            fontSize: 20
          ),
          ),
          ElevatedButton(
              onPressed: () {
                data++ ;
                setState(() {
                  calculate.setDataString(data.toString());
                });
              },
              child: Text('Tambahkan')
          )
        ],
      )

    );
  }
}
