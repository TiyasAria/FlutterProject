import 'package:course_app/domainBloc/model/login_response.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key,  required this.loginResponse}) : super(key: key);

  // nah kita ingin menampilkan data di homenya ini yaitu dengan cara
  final LoginResponse loginResponse;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.loginResponse.token!),
      ),
    );
  }
}
