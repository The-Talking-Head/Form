import 'dart:convert';
import 'package:flutter/material.dart';
import 'settings.dart'; 
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override 
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> { 

  fetchallmembersdata() async { 
    var response; 
     response= await http.post(baseURL+"view.php");
      print(response.body);
        SuccessAlertBox(context: context, title: "Great Job!", messageText: "Successful!");
         return jsonDecode(response.body);
                   }
                  
                   @override
                   void initState() { 
                     super.initState();
                     fetchallmembersdata();
                   }
                    @override 
                    Widget build(BuildContext context) { 
                      return Scaffold( 
                        appBar: AppBar( 
                          title: Text("Dashboard"),
                          backgroundColor: Colors.red[800],
                        ),

                        drawer: Drawer( 
  child: ListView( 
    padding: EdgeInsets.zero,
    children: <Widget>[ 
      DrawerHeader(
     child: Text("Gmail", style: TextStyle(fontSize: 24.0, color: Colors.white70),),
     decoration: BoxDecoration(
       color: Colors.red[800],

      ),
       ),
      ListTile( 
        title: Row(
                      children: <Widget>[ 
                        Icon( 
                          Icons.personal_video,
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                          color: Colors.red[800],
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
                        body: Center( 
                          child: FutureBuilder(
                            future: fetchallmembersdata(),
                            builder: (BuildContext context, AsyncSnapshot received ) {
                              if(!received.hasData)
                                return CircularProgressIndicator();
                              return ListView.builder(
                                itemCount: received.data.length,
                                itemBuilder: (BuildContext context, int index) {
                                return ListTile( 
                                   title: Text(received.data[index]["name"].toString()),
                                   subtitle: Text(received.data[index]["email"].toString()),
                                   leading: Icon(Icons.account_circle),
                                 );
                               },
                              );
                            },
                          ),
                        ),
                      );
                    }

               
         
           
}

/*Column( 
          children: <Widget>[ 
            ListTile( 
              title: Text("Nawreen"),
              subtitle: Text("CSE MIST"),
              leading: Icon(Icons.acc),
            ),
          ],
        ),*/
