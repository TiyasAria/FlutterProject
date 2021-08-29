import 'package:course_app/presentation/detail_page.dart';
import 'package:flutter/material.dart';

class GridItem extends StatefulWidget {
  const GridItem({Key? key}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  List<String> ListItem = [
    'assets/img_1.png',
    'assets/img_2.png',
    'assets/img_3.png',
    'assets/img_4.png',
    'assets/img_title.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: ListItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //cross axis count itu menentukan ke kanan itu mau berpa jumlahnya
            crossAxisCount: 3,
            // untuk rasio antar tinggi dan lebarnya
            childAspectRatio: 2/1 ,
            //untuk spasi kesamping
            crossAxisSpacing: 10,
            // untuk spasia ke atas
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) =>
              InkWell(
                onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(
                  image: ListItem[index],
                )));
                },
                  child: ListImageItem(
                      ListItem: ListItem[index]
                  )
              )
      ),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.ListItem,
  }) : super(key: key);

  final String ListItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
     height: 200,
     child: Image.asset(ListItem, fit: BoxFit.cover,),
          );
  }
}
