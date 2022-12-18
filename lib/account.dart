import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shecare/db/functions/login_functions.dart';
import 'package:shecare/db/model/data_model_account.dart';
import 'package:shecare/home.dart';

// class account extends StatefulWidget {
//   final Account newaccount;
//   const account({Key? key, required this.newaccount}) : super(key: key);
//
//   @override
//   State<account> createState() => _accountState();
// }
//
// final editingcontroller = TextEditingController();
// String result = "";
//
// class _accountState extends State<account> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 245, 240, 198),
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(248, 156, 122, 195),
//           automaticallyImplyLeading: false,
//           title: Center(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     const Text(
//                       'Hey',
//                       style: TextStyle(
//                           fontSize: 30,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                     const SizedBox(width: 30),
//                     Text(
//                       widget.newaccount.name,
//                       style: const TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//
//         ),
//         body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 ListTile(
//                   title: const Text(
//                     'Name',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   ),
//                   subtitle: Text(
//                     widget.newaccount.name,
//                     style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
//                   ),
//                   trailing: IconButton(
//                       onPressed: () {
//                         update(1, context);
//                       },
//                       icon: const Icon(Icons.edit)),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 ListTile(
//                   title: const Text(
//                     'Age',
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                   ),
//                   subtitle: Text(
//                     widget.newaccount.age,
//                     style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64)),
//                   ),
//                   trailing: IconButton(
//                       onPressed: () {
//                         update(2, context);
//                       },
//                       icon: const Icon(Icons.edit)),
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//
//               ],
//             )));
//   }
//
//   void update(int index, BuildContext ctx) {
//     showDialog(
//         context: ctx,
//         builder: (context) {
//           return Dialog(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: TextFormField(
//                       controller: editingcontroller,
//                       decoration: const InputDecoration(
//                           hintText: 'Enter',
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                               borderSide: BorderSide())),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   ElevatedButton(
//                       onPressed: () async {
//                         result = editingcontroller.text;
//                         setState(() {
//                           addDetails(widget.newaccount.email, index, result);
//                         });
//                         editingcontroller.clear();
//                         Navigator.of(context).pop();
//                       },
//                       child: const Text('OK'))
//                 ],
//               ));
//         });
//   }
// }
//

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
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Color(0xff3d3a3a),
        title : Center(
        child: Text('My Profile',
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
            child: Container(
              height: MediaQuery.of(context).size.height,
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter,
              //       colors: [
              //         Colors.white,
              //         Color(0xffff385d),
              //
              //       ],
              //     )
              // ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Name: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.name.toString(),
                          style: const TextStyle(color: Colors.black87,fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(1, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink,)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Age: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.age.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(2, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Height: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.height.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(3, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Weight: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.weight.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(4, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Blood Group: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.bloodgroup.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(5, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Last Period Date: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.lastperiod.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(6, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    title: Row(
                      children: [
                        const Text(
                          'Period Length: ',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          widget.newaccount.periodlength.toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 66, 64, 64),fontSize: 20),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          update(7, context);
                        },
                        icon: const Icon(Icons.edit,color: Colors.pink)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                ],
              ),
            )));
  }

  void update(int index, BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          return Dialog(
              child: Container(
                height: MediaQuery.of(context).size.height/3,
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
                        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink)),
                        onPressed: () async {
                          result = editingcontroller.text;
                          setState(() {
                            addDetails(widget.newaccount.email.toString(), index, result);
                          });
                          editingcontroller.clear();
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'))
                  ],
                ),
              ));
        });
  }
}
