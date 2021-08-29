import 'package:course_app/applicationBloc/auth/auth_cubit.dart';
import 'package:course_app/domainBloc/model/login_request.dart';
import 'package:course_app/presentationBloc/home/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignInPage extends StatefulWidget {
  static final String path = "lib/src/pages/login/login1.dart";

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //make a var
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // untuk bisa mengakses cubit maka pakai BlocProvider ,
      body: BlocProvider(
        // nah masukan cubitnya yaitu si authcubit ,
        create: (BuildContext context) => AuthCubit(),
        child: BlocConsumer<AuthCubit, AuthState>(
          listener: (BuildContext context, Object state) {
          //  listener itu untuk mengelolah datanya
           if(state is AuthError){
             // make syntax ketika ada yang error ,dan akan menampilkan alert dialog
             showDialog(
               context: context,
               builder:  (context) => AlertDialog(
                 title: Text('Error!!!'),
                 content: Text(state.errorMessage),
               )
             );

           } else if (state is AuthLoading ){
             print('loading');
           } else if (state is AuthLoginSuccess) {
             //karean ibarat listener itu sebuah backendnya maka kita coding nya disini untuk navigatornya
             print(state.dataLogin);
             Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(loginResponse: state.dataLogin,)));
           }
          },
          builder: (BuildContext context, state) =>  Container(
            //kalau builder itu hanya untuk tampilannya aja
            padding: EdgeInsets.all(20.0),
            color: Colors.grey.shade800,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: 50,),
                    ListTile(
                        title: TextField(
                          controller: _emailController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Email address:",
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              icon: Icon(Icons.email, color: Colors.white30,)
                          ),
                        )
                    ),
                    Divider(color: Colors.grey.shade600,),
                    ListTile(
                        title: TextField(
                          controller: _passwordController,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              hintText: "Password:",
                              hintStyle: TextStyle(color: Colors.white70),
                              border: InputBorder.none,
                              icon: Icon(Icons.lock, color: Colors.white30,)
                          ),
                        )
                    ),
                    Divider(color: Colors.grey.shade600,),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child:(state is AuthLoading) ? loadingLoginButton()
                          : loginButton(context),
                        ),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Text('Forgot your password?', style: TextStyle(color: Colors.grey.shade500),)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton loginButton(BuildContext context) {
    return ElevatedButton(
                          onPressed: (){
                            final _requestData = LoginRequest(email: _emailController.text, password: _passwordController.text);
                            //  panggil cubit untuk sign in user
                            context.read<AuthCubit>().signInUser(
                               _requestData);
                          },
                          style: ButtonStyle(
                            backgroundColor:    MaterialStateProperty.all(Colors.cyan) ,
                          ),
                          child: Text('Login', style: TextStyle(color: Colors.white70, fontSize: 16.0),),
                        );
  }
  ElevatedButton loadingLoginButton( ) {
    return ElevatedButton(
                          onPressed: (){},
                          child: CircularProgressIndicator(),
                        );
  }
}