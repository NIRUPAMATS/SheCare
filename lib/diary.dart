import 'package:SheCare/journal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:SheCare/db/functions/db_functions_diary.dart';
import 'package:SheCare/db/model/data_model_diary.dart';


String title1 = "";
String data1 = "";
String currentDate1 = DateFormat('dd-MM-yyyy').format(DateTime.now());
final _title1controller = TextEditingController();
final _data1controller = TextEditingController();

class Diary extends StatefulWidget {
  const Diary({Key? key}) : super(key: key);

  @override
  State<Diary> createState() => _DiaryState();
}

class _DiaryState extends State<Diary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff385d) ,
      body:Padding(
        padding:const EdgeInsets.fromLTRB(10.0,40.0, 0.0, 0.0),
        child:ListView(
          children:[
            SingleChildScrollView(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 170,
                      child: Container(
                        height:MediaQuery.of(context).size.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children:[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(currentDate1,
                                  style:TextStyle(
                                    fontSize:20,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height:5.0),
                                Text("Write your thoughts down!!",
                                  style:TextStyle(
                                    fontSize:35,
                                    fontFamily: 'Heland',
                                    color: Colors.white,
                                    letterSpacing: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width:70,
                              margin: EdgeInsets.only(top:20,),
                              child: ElevatedButton(
                                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.grey)),
                                onPressed:() {
                                  setState(() {
                                    title1=_title1controller.text;
                                    data1=_data1controller.text;
                                    final file=FileData_diary(title:title1,data:data1,dateTime: currentDate1);
                                    addFiles(file);
                                  });
                                  _data1controller.clear();
                                  _title1controller.clear();
                                  Navigator.pop(context);

                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Journal()));
                                },
                                child: Text("SAVE",
                                  style:
                                  TextStyle(
                                    color:Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom:50,),
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width-25,
                    height: MediaQuery.of(context).size.height ,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children:[
                          TextField(
                            controller: _title1controller,
                            minLines: 1,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Title',
                            ),
                          ),

                          TextField(
                            controller: _data1controller,
                            minLines: 1,
                            maxLines: null,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Scribble Something!!',
                            ),
                          ),
                        ],
                      ),
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
