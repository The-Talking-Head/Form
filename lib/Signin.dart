import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'settings.dart';
class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();

}
class _SignInState extends State<SignIn>{
 String title= "Sign In";
 TextEditingController emailcontroller = TextEditingController();
 TextEditingController passwordcontroller = TextEditingController();
 


 signin() async { 
   var response;
     var data=
      { 
        "email": emailcontroller.text,
        "password": passwordcontroller.text
      };
                    
      response= await http.post(baseURL+"signin.php", body: jsonEncode(data));
      print(response.body);
      var jsonbody= jsonDecode(response.body);
      //print(jsonbody["email"]); 
      if(jsonbody["email"]==emailcontroller.text && jsonbody["password"]==passwordcontroller.text ){
        //SuccessAlertBox(context: context, title: "Success!", messageText: "Log in Succesful!!");
        setvalue("isLoggedin","true");
        setvalue("email",jsonbody["email"]);
        setvalue("phone",jsonbody["phone"]);
        Navigator.pushNamed(context, '/Dashboard');
        
      }
      else if(jsonbody["success"]=="0"){
        print("Invalid Username or Password!");
        DangerAlertBox(context: context, title: "Error!", messageText: "Invalid Username or Password!!");
      }
      else{
        WarningAlertBox(context: context, title: "Error!", messageText: "Error Happened! Please try again later.");

      }
        
      
 }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[ 
          IconButton(icon: Icon(Icons.settings), onPressed: (){})
        ],
        title: const Text('Home'),
        backgroundColor: Colors.blueGrey[700],
      ),
      drawer: Drawer( 
  child: ListView( 
    padding: EdgeInsets.zero,
    children: <Widget>[ 
      DrawerHeader(
     child: Text("  Gmail", style: TextStyle(fontSize: 24.0, color: Colors.white70),),
     decoration: BoxDecoration(
       color: Colors.blueGrey[700],
      ),
       ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.personal_video,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Primary'),
                      ],
                    ),
              onTap: () { },
              ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.supervisor_account,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Social'),
                      ],
                    ),
              onTap: () { },
              ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.local_offer,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Promotions'),
                      ],
                    ),
              onTap: () { },
              ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.star_border,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Starred'),
                      ],
                    ),
              onTap: () { },
              ),
     ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.access_time,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Snoozed'),
                      ],
                    ),
              onTap: () { },
              ),
      
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.label_important,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Important'),
                      ],
                    ),
              onTap: () { },
              ), 
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.send,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Sent'),
                      ],
                    ),
              onTap: () { },
              ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.timer,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Scheduled'),
                      ],
                    ),
              onTap: () { },
              ),
      
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.filter_b_and_w,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Outbox'),
                      ],
                    ),
              onTap: () { },
              ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.insert_drive_file,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Draft'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.mail_outline,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    All Mail'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.error_outline,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Spam'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.delete_outline,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Bin'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.calendar_today,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Calendar'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.supervised_user_circle,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Contacts'),
                      ],
                    ),
              onTap: () { },
              ),
       ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.help,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Help and feedback'),
                      ],
                    ),
              onTap: () { },
              ),
      
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.directions_walk,
                          color: Colors.blueGrey[700],
                          size: 24,
                        ),
                        Text('    Log Out'),
                      ],
                    ),
              onTap: () {
                Navigator.pushNamed(context, '/Signin');
                SuccessAlertBox(context: context, title: "Success!", messageText: "Logged Out!");
               },
              ),
      
    ],
  ),
),

body: Container(

  decoration: BoxDecoration(
           image: DecorationImage(
                image: AssetImage('assets/image11.jpg'),
                fit: BoxFit.cover,
                ),
  ),  
  child: Center( 
    child: Card( 
      color: Colors.transparent,
      child: Padding( 
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView( 
          child: Column( 
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [ 
              Text("Log In Form", style: TextStyle(fontSize: 25, color: Colors.blueGrey[100]),),
              Padding( 
                padding: const EdgeInsets.all(8.0),
                child: TextFormField( 
                  controller: emailcontroller,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.blueGrey[200]),   
                      ), 
                      focusedBorder: UnderlineInputBorder(
	                      borderSide: BorderSide(color: Colors.blueGrey),
	                      ), 
                    
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.blueGrey[200]),
                    helperText: "youremail@gmail.com",
                    helperStyle: TextStyle(color: Colors.blueGrey[300]),
                  ),
                ),
              ),

              Padding( 
                padding: const EdgeInsets.all(8.0),
                child: TextFormField( 
                  controller: passwordcontroller,
                   style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration( 
                    enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.blueGrey[200]),   
                      ),
                      focusedBorder: UnderlineInputBorder(
	                      borderSide: BorderSide(color: Colors.blueGrey),
	                      ), 
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.blueGrey[200]),
                    helperText: "**********",
                    helperStyle: TextStyle(color: Colors.blueGrey[300]),
                  ),
                ),
              ),
              
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [ 
                  OutlineButton( 
                    child: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.account_box,
                          color: Colors.blueGrey[200],
                          
                          size: 24,

                        ),
                        
                        Text(" Log In", style: TextStyle( color: Colors.blueGrey[200], ),),
                      ],
                    ),
                    color: Colors.blueGrey[200],
                    onPressed: signin


                  ),

                  OutlineButton( 
                    child: Row(
                      children: <Widget>[ 
                        //Icon(Icons.arrow_forward_ios),
                        Icon( 
                          Icons.mode_edit,
                          color: Colors.blueGrey[200],
                          size: 24,

                        ),
                      
                        Text(" Sign Up", style: TextStyle( color: Colors.blueGrey[200],  ),),
                    
                        
                      ],
                    ),
                    onPressed: () { 
                  Navigator.pushNamed(context, '/SignUp');
                                }
                  ), 
                ],
              ),
              
            ],
          ),
        ),
      ),
    ),
  ),
),
);
}
}