import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart'as http;
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'settings.dart';
class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();

}
class _SignUpState extends State<SignUp>{
 String title= "Sign Up";
 TextEditingController emailcontroller = TextEditingController();
 TextEditingController passwordcontroller = TextEditingController();
 TextEditingController confirmpasswordcontroller = TextEditingController();


 signup() async { 
   var response;
   if(passwordcontroller.text==confirmpasswordcontroller.text) { 
     var data=
      { 
        "email": emailcontroller.text,
        "password": passwordcontroller.text
      };
      SuccessAlertBox(context: context, title: "Success!!", messageText:"Signup Done!");            
     response= await http.post(baseURL+"signup.php", body: jsonEncode(data));
     //print(response.body);
     
     Navigator.pushNamed(context, '/Signin');



   }
   else {
       DangerAlertBox(context: context, title: "Error!", messageText: "Password and Confirm Password are different!");
     
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
        backgroundColor: Colors.brown,
      ),
      drawer: Drawer( 
  child: ListView( 
    padding: EdgeInsets.zero,
    children: <Widget>[ 
      DrawerHeader(
     child:Text("  Gmail", style: TextStyle(fontSize: 24.0, color: Colors.white),),

     decoration: BoxDecoration(
       color: Colors.brown
      ),
       ),

      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.personal_video,
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
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
                          color: Colors.brown,
                          size: 24,
                        ),
                        Text('    Help and feedback'),
                      ],
                    ),
              onTap: () { },
              ),
      
      
      

      
    ],
  ),
),

body: Container( 
  decoration: BoxDecoration(
           image: DecorationImage(
                image: AssetImage('assets/image1.jpg'),
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
              Text("Sign Up Form", style: TextStyle(fontSize: 24.0, color: Colors.brown[100], ),),
              Padding( 
                padding: const EdgeInsets.all(8.0),
                child: TextFormField( 
                  controller: emailcontroller,
                  style: TextStyle(color: Colors.white,),
                    decoration: InputDecoration( 
                    
                      enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.brown[200]),   
                      ), 
                      focusedBorder: UnderlineInputBorder(
	                      borderSide: BorderSide(color: Colors.brown),
	                      ), 
                    
                      
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.brown[100]),
                    helperText: "youremail@gmail.com",
                    helperStyle: TextStyle(color: Colors.brown[300]),
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
                        borderSide: BorderSide(color: Colors.brown[200]),   
                      ), 
                      focusedBorder: UnderlineInputBorder(
	                      borderSide: BorderSide(color: Colors.brown),
	                      ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.brown[100]),
                    helperText: "**********",
                    helperStyle: TextStyle(color: Colors.brown[300]),
                  ),
                ),
              ),
              Padding( 
                padding: const EdgeInsets.all(8.0),
                child: TextFormField( 
                  controller: confirmpasswordcontroller,
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(      
                        borderSide: BorderSide(color: Colors.brown[200]),   
                      ),
                      focusedBorder: UnderlineInputBorder(
	                      borderSide: BorderSide(color: Colors.brown),
	                      ),  
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(color: Colors.brown[100]),
                    helperText: "**********",
                    helperStyle: TextStyle(color: Colors.brown[300]),
                  ),
                ),
              ),
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [ 
                  OutlineButton( 
                    child: Row(
                      children: <Widget>[ 
                        //Icon(Icons.arrow_forward_ios),
                        Icon( 
                          Icons.mode_edit,
                          color: Colors.brown[200],
                          size: 24,

                        ),
                      
                        Text(" Sign Up", style: TextStyle(color: Colors.brown[100]),),
                      ],
                    ),
                    color: Colors.brown,
                    onPressed: () {
                      signup();
                    } 
                    

                  ),

                  OutlineButton( 
                    child: Row(
                      children: <Widget>[ 
                        //Icon(Icons.arrow_forward_ios),
                        Icon( 
                          Icons.account_box,
                          color: Colors.brown[200],
                          
                          size: 24,

                        ),
                      
                        Text(" Log In", style: TextStyle(color: Colors.brown[100]),),
                      ],
                    ),
                    color: Colors.brown,
                    onPressed: () { 
                  Navigator.pushNamed(context, '/Signin');
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