import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:SheCare/home.dart';

//import 'package:url_launcher/url_launcher.dart';

class MyDial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Dial',
            style: TextStyle(
              letterSpacing: 2.0,
              fontSize: 20.0,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
            },
          ),
        ],
      ),
      body :  SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffff385d),
                    Colors.white,
                  ],
                )
            ),

            child : Column(
              children: [
                SizedBox(height: 20.0,),
                Text("Hey there,\nWe're here for you.",
                  style: TextStyle(
                    fontFamily: 'Natural',
                    color: Colors.white,
                    fontSize: 35.0,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30.0,),
                Container(
                  height: 80.0,
                  width: 365.0,
                  child: Card(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Speed Dial",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold,
                            ),),
                        ),
                        SizedBox(width: 145.0,),
                        IconButton(
                            icon: const Icon(
                              Icons.add_circle,
                              size: 40,
                              color: Colors.white,
                            ),
                            onPressed: () {
                            }),
                      ],
                    ),
                    color: Colors.transparent,
                  ),
                ),


                Container(
                  height: 80.0,
                  width: 365.0,
                  child: Card(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(Icons.dialpad,size: 35,
                            color: Colors.black54,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Text("Sneha Sani\n8086987542",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              letterSpacing: 1.0,
                            ),),
                        ),
                        SizedBox(width: 125.0,),
                        IconButton(
                            icon: const Icon(
                              Icons.delete,
                              size: 30,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              print("Delete");
                            }),
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),


                SizedBox(height: 10.0,),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Emergency Contact',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: 1.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  color: Colors.transparent,
                ),


                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Ambulance'),
                        subtitle: Text('102'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Police'),
                        subtitle: Text('100'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Fire'),
                        subtitle: Text('101'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Women Helpline'),
                        subtitle: Text('1091'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Children in difficult Situation'),
                        subtitle: Text('1098'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Cyber Crime Helpline'),
                        subtitle: Text('155620'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Road Accident Emergency'),
                        subtitle: Text('1073'),
                      ),
                    ],
                  ),
                ),

                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        leading: Icon(Icons.call, size: 35),
                        title: Text('Aids Helpline'),
                        subtitle: Text('1097'),
                      ),
                    ],
                  ),
                ),

              ],
            )
        ),
      ),
    );
  }
}

