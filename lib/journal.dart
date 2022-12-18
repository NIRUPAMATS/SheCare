
import 'package:flutter/material.dart';
import 'package:shecare/db/functions/db_functions_1.dart';
import 'package:shecare/db/model/data_model_1.dart';
import 'package:intl/intl.dart';
import 'package:shecare/home.dart';

  String? currentDate1 =  DateFormat('dd-MM-yyyy').format(DateTime.now());
  String? name = "";
  String? data = "";
  final _namecontroller = TextEditingController();
  final _datacontroller = TextEditingController();

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  State<Journal> createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  

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
      body: SafeArea(
          child:ValueListenableBuilder(
          valueListenable: filelistnotifier,
          builder:(BuildContext context, List<FileData1>filelist, Widget? child) {
             return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffff385d),
                Color(0xfff8f1f3),
              ],
            ),
          ),
              child: Column(
                children: [
                Container(
                margin: EdgeInsets.only(top: 20,bottom: 30),
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
                Expanded(
                  child: ListView.separated(itemBuilder: (BuildContext context,int index){
            return Card(
              color: Colors.white,
              child:
              ListTile(
                title:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        margin:EdgeInsets.only(right: MediaQuery.of(context).size.width/3 ,bottom: 5),
                        child: Text(filelist[index].date1.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w300,
                        ),
                        )
                    ),
                    Container(
                        margin:EdgeInsets.only(right: MediaQuery.of(context).size.width/3 ),
                        child: Text(filelist[index].filename1.toString())
                    ),
                  ],
                ),
                leading:const Icon(Icons.sticky_note_2_sharp),
                subtitle: Text(filelist[index].filedata1.toString()),
                trailing:IconButton(onPressed: (){
                  setState(() {
                    if(filelist[index].id1!=null){
                    deleteFiles(filelist[index].id1!);
                    }
                  });
                }, icon: Icon(Icons.delete,color:Colors.grey))
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
          itemCount: filelist.length),
                ),
            ],
          ),
        );
      },
      )
              
      ),  
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) {
            return Dialog(
              child: Padding(
          padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(currentDate1.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name=_namecontroller.text;
                        data=_datacontroller.text;
                        final file=FileData1(filename1:name,filedata1:data,date1: currentDate1);
                        addFiles(file);
                      });
                      _datacontroller.clear();
                      _namecontroller.clear();
                      Navigator.pop(context);
                    },
                    child: const Text('Save'),
                    style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                  ),
                ],
              ),
              TextFormField(
                controller: _namecontroller,
                decoration: const InputDecoration(
                    hintText: 'Title ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        borderSide: BorderSide())),
              ),
              const SizedBox(height: 35),
              TextField(
                controller: _datacontroller,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration:const InputDecoration(
                    hintText: 'Scribble something!!',
                  border: InputBorder.none
                ),
              ),
              const SizedBox(height: 35),

            ],
          )));

          });
        },
        tooltip: 'New File',
        backgroundColor: Colors.grey,
        child: Icon(Icons.add),
      ),
    
    
    );

  }
  
}
