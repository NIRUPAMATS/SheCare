import 'package:shecare/db/functions/login_functions.dart';
import 'package:shecare/db/model/data_model_account.dart';
import 'package:shecare/fitness.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shecare/period.dart';
import 'package:shecare/toDoList.dart';
import 'package:shecare/signup.dart';
import 'package:shecare/login.dart';
import 'package:shecare/calendar.dart';
import 'package:shecare/home.dart';
import 'package:shecare/mydial.dart';
import 'package:shecare/journal.dart';
import 'package:hive/hive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'db/model/data_model_account.dart';


class Home extends StatefulWidget {


  @override
  State<Home> createState() => _HomeState();
}

String mail="";

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.grey[900],
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('Home',
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        elevation: 5,

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50.0,bottom: 20,right: 20,left: 20),
              color: Color(0xfff35773),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      radius : 50.0,
                      backgroundImage: AssetImage('assets/snehapic.jpg'),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text(
                    "Sneha Sani",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),


            ListTile(
              leading: Icon(
                Icons.face,
              ),
              title: const Text('My Profile'),
              onTap: () {
                //mail = getEmail().toString();
                //loadPage(mail, context);
                //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>account()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.book,
              ),
              title: const Text('My Journal'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Journal();
                        }
                    )
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.bloodtype_sharp,
              ),
              title: const Text('Period Tracker'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Period();
                        }
                    )
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fitness_center,
              ),
              title: const Text('Fitness Guide'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return Fitness();
                        }
                    )
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.task,
              ),
              title: const Text('My Task'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return toDoList();
                        }
                    )
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
              ),
              title: const Text('Emergency Contacts'),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context){
                          return MyDial();
                        }
                    )
                );
              },
            ),

          ],
        ),
      ),
      body : Container(
          decoration: const BoxDecoration(
            image : DecorationImage(
              image: AssetImage("assets/pinkbg1.jpg"),
              fit: BoxFit.cover,
            ),
          ),

          padding: EdgeInsets.all(25),
          child : Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Heyyy,\n Sneha Sani !",
                  style : TextStyle(
                    fontFamily: 'Natural',
                    color: Colors.black,
                    fontSize: 50.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Center(
                  child: Container(

                    margin: EdgeInsets.only(top: 70),
                    height: MediaQuery.of(context).size.height/3,
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            Text(
                              'SheCare For You!',
                              style : TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height:10),
                            Card(
                              child: Text('Journal',
                                style : TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Card(

                              child: Text('Period Tracker',
                                style : TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Card(
                              child: Text('Fitness Guide',
                                style : TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Card(
                              child: Text('Task Manager',
                                style : TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Card(
                              child: Text('Emergency Contacts',
                                style : TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }
}