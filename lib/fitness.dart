import 'package:flutter/material.dart';
import 'package:shecare/home.dart';


class Fitness extends StatelessWidget {
  const Fitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Wellness',
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
        child: Center(
          child: Container(
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
            child: Padding(
              padding: const EdgeInsets.all(.0),
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Text(
                          'A healthy outside starts from the inside.',
                          style: TextStyle(
                            fontFamily:'Heland' ,
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 70,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.accessibility_new, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.health_and_safety, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.airline_seat_individual_suite, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.access_time, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.wine_bar_rounded, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const ListTile(
                                leading: Icon(Icons.wc_sharp, size: 45),
                                subtitle: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(' a more-or-less normal distribution of letters, as opposed to using , making it look like readable English. Many desktop publishing packages and web page edito'),
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),

    );
  }
}
