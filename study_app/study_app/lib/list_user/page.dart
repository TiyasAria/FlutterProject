import 'package:flutter/material.dart';
import 'package:study_app/data/models/user_model.dart';

class ListUserPage extends StatefulWidget {
  const ListUserPage({Key? key}) : super(key: key);

  @override
  _ListUserPageState createState() => _ListUserPageState();
}

class _ListUserPageState extends State<ListUserPage> {

  @override
  void initState(){
    print('Menjalankan methodpertama kali : initState(');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ListUserPage oldWidget){
    print('MMerender ulang tampilan widget uodate');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose(){
    print('Widget terdispose dispose ');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            setState(() {
                // ignore: unnecessary_statements
                _ListUser;
            });
          },
          child: Text('Set state'),

        ),
      ) ,
    );
  }
}

class _ListUser extends StatelessWidget {
  const _ListUser({Key? key, required this.userData}) : super(key: key);

  final List<UserModel> userData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index){
          return ListTile(
            leading : CircleAvatar(
              backgroundImage: NetworkImage(userData[index].avatar),
            ),
            title: Text(userData[index].firstName + '' + userData[index].lastName),

          );
        },
      itemCount: userData.length,
        );
  }
}


