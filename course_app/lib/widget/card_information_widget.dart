import 'package:flutter/material.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.only(top: 40, left: 20, right: 20),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Container(
            height: 130,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // ini bagian foto
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage('https://picsum.photos/250?image=9'),
                        fit : BoxFit.cover,
                      )
                  ),
                  width: 100,
                  margin: EdgeInsets.only(bottom: 15),
                ),
                SizedBox(width: 10,),
                //  ini bagian tulisan
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Tiyas Aria Pratiwi',
                        overflow: TextOverflow.ellipsis ,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'Software Engineer',
                        overflow: TextOverflow.ellipsis ,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 15,),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10)
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InformationRating(jumlah: '34', title: 'Articles',),
                            // SizedBox(width: 20),
                            InformationRating(jumlah: '580', title: 'Followers',),
                            // SizedBox(width: 20),
                            InformationRating(jumlah: '9.8', title: 'Rating',),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          //ini adalah button
          Expanded(
            child: Container(
              height: double.infinity,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: OutlinedButton(
                        onPressed: (){},
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                          ),
                        ),
                        child: Text('Chat', textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        )
                    ),
                  ),
                  SizedBox(width: 15,),
                  //expande fungsinya untuk membagi button menjadi panjang dan panjangnya sama
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                          shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          )
                      ),
                      onPressed: () {  },
                      child: Text(
                        'Follow', textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white, fontSize: 12,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InformationRating extends StatelessWidget {
  const InformationRating({
    Key? key, required this.title, required this.jumlah,
  }) : super(key: key);

  final String title;
  final String jumlah ;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: TextStyle(
              fontSize: 10,
              color: Colors.grey
          ),),
        Text(jumlah, style: TextStyle(
            fontSize: 18, color: Colors.black
        ),
        ),
      ],
    );
  }
}