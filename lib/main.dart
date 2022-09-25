import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static String? validateEmail( value) {
    String pattern=
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Enter Email';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Invalid Email';
    }
    else {
      return null;
    }
  }

  static String?  validatePassword(value){
    String pattern=r'^(?=.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).*$';
    RegExp regExp = RegExp(pattern);

    if(value.isEmpty){
      return 'Enter Passsword';
    }else if(value.length<8){
      return 'Password must be more than 8';

    }
    else if (!regExp.hasMatch(value)) {
      return 'Weak Password';

    }
    else {
      return null;
    }
  }
  var SignInKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Form(
          key: SignInKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
validator: validateEmail,
                  decoration:  InputDecoration(
                    hintText: 'Email'
                        ,border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15,),
                  )
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
validator: validatePassword,
                  decoration:  InputDecoration(
                      hintText: 'Password'    ,border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15,),
                )

                  ),

                ),
              ),

              InkWell(
                onTap: (){
                  if(SignInKey.currentState!.validate()){
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Container(
                    height: 60,
                    width: 345,

                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                    ),
                     child:const Center(
                      child: Text('Login',style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
