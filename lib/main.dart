
import 'package:flutter/material.dart';
import 'package:hello_world/SignUp.dart';
import 'Dashboard.dart';
import 'SignIn.dart';
import 'SplashScreen.dart';

//import 'settings.dart';
void main()
{
  
  runApp(MyApp());

  
}


class MyApp extends StatefulWidget {
 MyApp({Key key}) : super(key: key);

  @override
   _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> { 

  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      initialRoute: '/',
      routes: { 
       '/': (context) => SpalashScreen(),
       '/SignUp': (context) => SignUp(),
       '/Signin': (context) => SignIn(),
       
       '/Dashboard': (context) => Dashboard(),
       
      },

      debugShowCheckedModeBanner: false,
    );
  }
}