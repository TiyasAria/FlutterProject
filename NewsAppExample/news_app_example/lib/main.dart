import 'package:flutter/material.dart';
import 'package:news_app_example/news_service.dart';

import 'news_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Discover',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Text('Find Interesting news and articles in here ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18
              ),),
              SizedBox(height: 20,),
              Expanded(
                  child: FutureBuilder<List<Article>>(
                    future: NewsService().fetchNewsArticle(),
                    builder: ( context, snapshot) => !snapshot.hasData ? Center(
                        child: CircularProgressIndicator(),
                      )  :
                          ListView.builder(
                            itemCount: snapshot.data!.length,
                              itemBuilder: (context, index) {
                              return ListTile(
                                //ketika mendapatkan error data String? cant sign in String maka ubah menjadi STring
                                title: Text(snapshot.data![index].title.toString(),
                                maxLines: 2, overflow: TextOverflow.ellipsis,),
                                subtitle: Text(snapshot.data![index].description.toString(),
                                maxLines: 3,overflow: TextOverflow.ellipsis,),
                                leading: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    image: DecorationImage(
                                      image: NetworkImage(snapshot.data![index].urlToImage.toString())
                                    )
                                  ),
                                ),
                              );
                              }
                              ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
