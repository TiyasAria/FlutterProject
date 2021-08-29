import 'package:course_app/presentation/home/dashboard.dart';
import 'package:course_app/widget/icon_widget_data.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is example'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('goto dashboard'),
            onPressed: (){
              String title = 'This is first';
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard(
                textButton: 'New 1', title: 'First project',)));
            }
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconWidthLabel(
                    icon: Icons.call,
                    text: 'Call',
                    color: Colors.blue,
                    textColor: Colors.blue),
                IconWidthLabel(
                  icon: Icons.near_me,
                  text: 'Route',
                  color: Colors.red,
                  textColor: Colors.red,
                ),
                IconWidthLabel(
                  icon: Icons.share,
                  text: 'Share',
                  color: Colors.amber,
                  textColor: Colors.amber,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}