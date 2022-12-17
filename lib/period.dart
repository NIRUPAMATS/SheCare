import 'package:ammuna/calendar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ammuna/home.dart';


class Period extends StatelessWidget {
  const Period({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffff385d),
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Period',
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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              height:MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(top:100.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffff385d),
                      Colors.white,
                    ],
                  ),
              ),
              child: Column(
                children: [
                  Text("Happy Bleeding!",
                    style: TextStyle(
                      fontFamily: 'Heland',
                      color: Colors.white,
                      fontSize: 35.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height:15.0),

                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(15.0),
                    child:Column(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      const SizedBox(height:30),
                        const ListTile(

                           leading: Icon(Icons.pregnant_woman_rounded,
                             color:Colors.pink,
                              size:70.0,
                           ),

                          title: Text('Day 05',
                          style: TextStyle(
                            fontSize: 40,
                          ),
                          ),

                          subtitle: Text('Very Low chances of getting pregnant!!',
                          style:TextStyle(
                            fontSize:20,
                          ),
                          ),
                     ),
                     const SizedBox(height:50.0),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Text('Next cycle on 24th December!',
                         style:TextStyle(
                           fontSize: 20,
                         ),
                         ),
                         const SizedBox(height:5.0),
                         Text('Next Fertile Day on 2nd January!!',
                         style:TextStyle(
                           fontSize:20,
                         ),
                         ),
                       ],
                     ),
                        const SizedBox(height:30),
                        Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: <Widget>[
                              TextButton(
                                     child: const Text('EDIT',
                                     style:TextStyle(
                                       color: Colors.grey,
                                     ),
                                     ),
                                      onPressed: () {/* ... */},
                                       ),
                               const SizedBox(width: 8),

                    ],
                  ),
                  ],

            ),
            ),
                  const SizedBox(height:50.0),
                  Container(
                    child:ElevatedButton.icon (
                      onPressed:() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Calendar()));
                      },
                      icon:Icon(
                        Icons.calendar_today_sharp,
                        color: Colors.white,
                      ),
                      label:Text('Calender',
                        style:TextStyle(
                          fontFamily: 'MouseMemoirs',
                          color: Colors.white ,
                          fontSize: 15.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
                    ),
                  ),
                ],
              ),
            ),
          ],

        ),

      ),
    );
  }
}
