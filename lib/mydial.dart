import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shecare/db/functions/db_functions_4.dart';
import 'package:shecare/db/model/data_model_4.dart';
import 'package:shecare/home.dart';



String? name = "";
String? num = "";
final _namecontroller = TextEditingController();
final _numcontroller = TextEditingController();

class MyDial extends StatefulWidget {
  @override
  State<MyDial> createState() => _MyDialState();
}

class _MyDialState extends State<MyDial> {
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
        child: ValueListenableBuilder(
              valueListenable: filelistnotifier,
              builder:(BuildContext context, List<FileData4>filelist, Widget? child) {
          return Container(
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
                  SizedBox(height: 30.0,),

                  // Expanded(child:
                  // ListView.separated(
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return Card(
                  //         color: Colors.white,
                  //         child:
                  //         ListTile(
                  //             title: Column(
                  //               mainAxisAlignment: MainAxisAlignment
                  //                   .start,
                  //               children: [
                  //                 Container(
                  //                     margin: EdgeInsets.only(
                  //                         right: MediaQuery
                  //                             .of(context)
                  //                             .size
                  //                             .width / 3),
                  //                     child: Text(
                  //                         filelist[index].name4
                  //                             .toString())
                  //                 ),
                  //               ],
                  //             ),
                  //             leading: const Icon(
                  //                 Icons.sticky_note_2_sharp),
                  //             subtitle: Text(
                  //                 filelist[index].num4.toString()),
                  //             trailing: IconButton(onPressed: () {
                  //               setState(() {
                  //                 if (filelist[index].id4 != null) {
                  //                   deleteFiles(filelist[index].id4!);
                  //                 }
                  //               });
                  //             },
                  //                 icon: Icon(Icons.delete,
                  //                     color: Colors.grey))
                  //         ),
                  //       );
                  //     },
                  //     separatorBuilder: (BuildContext context,
                  //         int index) => const Divider(),
                  //     itemCount: filelist.length),
                  // ),

                ],

                ),
                );
              },
        ),
      ),
      // floatingActionButton: IconButton(
      //     icon: const Icon(
      //       Icons.add_circle,
      //       size: 30,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       showDialog(
      //           context: context, builder: (context) {
      //         return Dialog(
      //           child: Padding(
      //             padding: EdgeInsets.all(15),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment
      //                       .spaceBetween,
      //                   children: [
      //                     ElevatedButton(
      //
      //                       onPressed: () {
      //                         setState(() {
      //                           name = _namecontroller
      //                               .text;
      //                           num = _numcontroller
      //                               .text;
      //                           final file = FileData4(
      //                               name4: name
      //                                   .toString(),
      //                               num4: num
      //                                   .toString(),
      //                               );
      //                           addFiles(file);
      //                         });
      //                         _numcontroller.clear();
      //                         _namecontroller.clear();
      //                         Navigator.pop(context);
      //                       },
      //                       child: const Text('Save'),
      //                       style: ElevatedButton
      //                           .styleFrom(
      //                           primary: Colors
      //                               .pinkAccent),
      //                     ),
      //                   ],
      //                 ),
      //                 TextFormField(
      //                   controller: _namecontroller,
      //                   decoration: const InputDecoration(
      //                       hintText: 'Name',
      //                       border: OutlineInputBorder(
      //                           borderRadius: BorderRadius
      //                               .all(
      //                               Radius.circular(
      //                                   4.0)),
      //                           borderSide: BorderSide())),
      //                 ),
      //                 const SizedBox(height: 35),
      //                 TextField(
      //                   controller: _numcontroller,
      //                   keyboardType: TextInputType
      //                       .multiline,
      //                   maxLines: null,
      //                   decoration: const InputDecoration(
      //                       hintText: 'Phone Number',
      //                       border: InputBorder.none
      //                   ),
      //                 ),
      //                 const SizedBox(height: 35),
      //
      //               ],
      //
      //
      //             ),
      //           ),
      //         );
      //       });
      //     }
      //
      // ),
    );
  }
}

