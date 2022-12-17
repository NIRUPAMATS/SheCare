import 'package:SheCare/db/model/data_model_diary.dart';
import 'package:SheCare/diary.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:SheCare/db/functions/db_functions_diary.dart';
import 'package:SheCare/db/model/data_model_diary.dart';
import 'package:intl/intl.dart';
import 'package:SheCare/home.dart';



String title = "";
String data = "";
final _namecontroller = TextEditingController();
final _datacontroller = TextEditingController();

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();

}

class _JournalState extends State<Journal> {
  //bool? value = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Journal',
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
      body: SafeArea(child:ValueListenableBuilder(
        valueListenable: filelistnotifier,
        builder:(BuildContext context, List<FileData_diary>filelist, Widget? child) {
          return Column(
            children: [

              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffff385d),
                      Color(0xffff385d),
                    ],
                  ),
                ),
                child: Center(
                  child: Text("Hey there\nWhat's on your mind?!",
                    style: TextStyle(
                      fontFamily: 'Heland',
                      color: Colors.white,
                      fontSize: 25.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height:15.0),
              Expanded(child:
              ListView.separated(itemBuilder: (BuildContext context,int index){
                return Container(
                  height: 100,
                  child: ListTile(
                    title:Text(filelist[index].title),
                    leading: Text(filelist[index].dateTime),
                    subtitle: Container(
                        child: Text(filelist[index].data)
                    ),
                    trailing:
                    Wrap(
                      children: [
                        IconButton(onPressed: (){
                          setState(() {
                            if(filelist[index].id!=null){
                              deleteFiles(filelist[index].id!);
                            }
                          });
                        }, icon: Icon(Icons.edit,color:Colors.black54)),
                        IconButton(onPressed: (){
                          setState(() {
                            if(filelist[index].id!=null){
                              deleteFiles(filelist[index].id!);
                            }
                          });
                        }, icon: Icon(Icons.delete,color:Colors.black54))
                      ],
                    ),

                  ),
                );
              },
                  separatorBuilder: (BuildContext context, int index) => const Divider(),
                  itemCount: filelist.length),),

            ],
          );
        },
      )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Diary()));
        },
        tooltip: 'New File',
        backgroundColor: Colors.pinkAccent[200],
        child: Icon(Icons.add),
      ),


    );

  }

}
