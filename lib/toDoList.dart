
import 'package:flutter/material.dart';
//import 'package:hive_flutter/adapters.dart';
import 'package:shecare/db/functions/db_functions.dart';
import 'package:shecare/db/model/data_model.dart';
import 'package:shecare/home.dart';

String name = "";
String data = "";
final _namecontroller = TextEditingController();
final _datacontroller = TextEditingController();

class toDoList extends StatefulWidget {
  const toDoList({Key? key}) : super(key: key);

  @override
  State<toDoList> createState() => _toDoListState();

}

class _toDoListState extends State<toDoList> {
  //bool? value = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
          child: Text('My Task',
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
        builder:(BuildContext context, List<FileData>filelist, Widget? child) {
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
                  child: Text("Achieve more everyday!",
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
                return ListTile(
                    title:Text(filelist[index].filename),
                    leading: Checkbox(
                        value:filelist[index].value,
                        activeColor: Colors.pinkAccent,
                        tristate: true,
                        onChanged: (bool? value)=>setState(() {
                          filelist[index].value = value!;
                        })
                    ),
                    subtitle: Text(filelist[index].filedata),
                    trailing:IconButton(onPressed: (){
                      setState(() {
                        if(filelist[index].id!=null){
                          deleteFiles(filelist[index].id!);
                        }
                      });
                    }, icon: Icon(Icons.delete,color:Colors.black54))
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
          showDialog(context: context, builder: (context) {
            return Dialog(

                child: Container(
                  height: MediaQuery.of(context).size.height/3,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _namecontroller,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
                              hintText: 'Enter task. ',
                              border: InputBorder.none,
                            ),
                          ),
                          const SizedBox(height: 35),
                          TextField(
                            controller: _datacontroller,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration:const InputDecoration(
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pinkAccent)),
                              hintText: 'Enter description',
                              border: InputBorder.none,
                            ),


                          ),
                          const SizedBox(height: 35),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                name=_namecontroller.text;
                                data=_datacontroller.text;
                                final file=FileData(filename:name,filedata:data,value: false);
                                addFiles(file);
                              });
                              _datacontroller.clear();
                              _namecontroller.clear();
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                            style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                          )
                        ],
                      )),
                ));

          });
        },
        tooltip: 'New File',
        backgroundColor: Colors.pinkAccent[200],
        child: Icon(Icons.add),
      ),


    );

  }

}
