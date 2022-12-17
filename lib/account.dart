import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shecare/db/functions/login_functions.dart';
import 'package:shecare/db/model/data_model_account.dart';

class account extends StatefulWidget {
  final Account newaccount;
  const account({Key? key, required this.newaccount}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

final editingcontroller = TextEditingController();
String result = "";

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 240, 198),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(248, 156, 122, 195),
          automaticallyImplyLeading: false,
          title: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Hey',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(width: 30),
                    Text(
                      widget.newaccount.name,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // actions: [
          //   Tooltip(
          //     message: "Water Reminder",
          //     child: IconButton(
          //         onPressed: () {
          //
          //           Navigator.of(context).push(MaterialPageRoute(
          //               builder: ((context) =>
          //                   WaterReminder(newaccountw: widget.newaccount))));
          //         },
          //         icon: const Icon(Icons.water_drop_sharp,color: Color.fromARGB(255, 143, 198, 225),)),
          //   )
          // ],
        ),
        body: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.name,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(1, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.age,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(2, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    'Height',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.height,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(3, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    'Weight',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.weight,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(4, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    'Blood Group',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.bloodgroup,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(5, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: const Text(
                    'Address',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  subtitle: Text(
                    widget.newaccount.address,
                    style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        update(6, context);
                      },
                      icon: const Icon(Icons.edit)),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            )));
  }

  void update(int index, BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          return Dialog(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: TextFormField(
                      controller: editingcontroller,
                      decoration: const InputDecoration(
                          hintText: 'Enter',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(4.0)),
                              borderSide: BorderSide())),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        result = editingcontroller.text;
                        setState(() {
                          addDetails(widget.newaccount.email, index, result);
                        });
                        editingcontroller.clear();
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'))
                ],
              ));
        });
  }
}















// import 'package:flutter/material.dart';
// import 'package:ammuna/db/model/data_model_account.dart';
//
// class account extends StatefulWidget {
//   final Account newaccount;
//   const account({Key? key,required this.newaccount}) : super(key: key);
//
//   @override
//   State<account> createState() => _accountState();
// }
//
// class _accountState extends State<account> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//         color: Color(0xffff385d),
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//         children: [
//         // SizedBox(height: MediaQuery.of(context).size.height/30,),
//         // SingleChildScrollView(
//         //   scrollDirection: Axis.vertical,),
//         SizedBox(height: MediaQuery.of(context).size.height/30,),
//         Container(
//         width: 300,
//         child: Align(
//         alignment: Alignment.topRight,
//         child: IconButton(
//         icon: const Icon(Icons.home_filled),
//         color: Colors.white,
//         onPressed: () {},
//         )
//         ),
//         ),
//         CircleAvatar(
//         radius: 40.0,
//         backgroundImage:NetworkImage('https://via.placeholder.com/150'),     backgroundColor: Colors.transparent,),
//         SizedBox(height:MediaQuery.of(context).size.height/20),
//         Container(
//         width: 300,height: 50,
//
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Name",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//         width: 300,
//         height: 50,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Age",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//         width: 300,
//         height: 50,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Height",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//         width: 300,
//         height: 50,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Weight",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//         width: 300,
//         height: 50,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Blood group",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Padding(
//         padding:EdgeInsets.symmetric(horizontal:10.0),
//         child:Container(
//         height:1.0,
//         width:130.0,
//         color:Colors.white,),),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//         width: 300,
//         height: 50,
//         decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(5)
//         ),
//         child: TextFormField(
//         decoration: InputDecoration(
//         labelText: "Last Period Date",
//         ),
//         ),
//         ),
//         SizedBox(height:MediaQuery.of(context).size.height/25),
//         Container(
//           width: 300,
//           height: 50,
//           decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(5)
//           ),
//           child: TextFormField(
//             decoration: InputDecoration(
//               labelText: "Period Length",
//             ),
//           ),
//         ),
//
//           Container(
//             width: 300,
//             child: Align(
//                 alignment: Alignment.bottomRight,
//                 child: IconButton(
//                   icon: const Icon(Icons.check_box),
//                   color: Colors.white,
//                   onPressed: () {},
//                 )
//             ),
//           ),
//
//     ],
//     ),
//         ),
//
//
//         );
//     }
// }
//
