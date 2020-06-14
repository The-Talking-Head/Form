import 'package:flutter/material.dart';

import 'settings.dart';
//import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';

class SpalashScreen extends StatefulWidget { 
  SpalashScreen({Key key}) : super(key: key);

  @override 
  _SpalashScreenState createState() => _SpalashScreenState();
}

class _SpalashScreenState  extends State<SpalashScreen> { 
  @override 
  void initState() {
    super.initState();
    gotosignuppage();
  }

  gotosignuppage() async{
    var abc= await getvalue("isLoggedin");
    print(abc); 
    if(abc=="true"){ 
      Future.delayed(const Duration(milliseconds: 1500),() { 
        Navigator.pushReplacementNamed(context, '/SignUp');

    });
    }
    else { 
       Future.delayed(const Duration(milliseconds: 1500),() { 
      Navigator.pushReplacementNamed(context, '/SignUp');
    });
    }
  }


 /* @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[ 
          IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
      ),
      drawer: Drawer( 
  child: ListView( 
    padding: EdgeInsets.zero,
    children: <Widget>[ 
    ],
  ),
),
);
}*/

@override  
Widget build(BuildContext context) {
  return Scaffold( 
    backgroundColor: Colors.white,
    body: Center( 
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ 
          Image.asset("assets/img1.jpg"),  
        ],
      )

    )
  );

}

}