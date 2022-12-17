import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:SheCare/account.dart';
import 'package:SheCare/home.dart';
import 'package:SheCare/db/functions/login_functions.dart';
import 'package:SheCare/db/model/data_model_account.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}
final mailinputcontroller=TextEditingController();
final passwordinputcontroller=TextEditingController();
final repasswordinputcontroller=TextEditingController();
final namecontroller=TextEditingController();
String _email="",_password='',_repassword='';
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 240, 198),
        body: Padding(padding:
        const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: mailinputcontroller,
                  decoration: const InputDecoration(
                      hintText: 'email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide())),
                ),
                const SizedBox(height: 30),
                TextField(
                  obscureText: true,
                  controller: passwordinputcontroller,
                  decoration: const InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide())),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  obscureText: true,
                  controller: repasswordinputcontroller,
                  decoration: const InputDecoration(
                      hintText: 'Re Enter Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide())),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () async {
                      _email=mailinputcontroller.text;
                      _password=passwordinputcontroller.text;
                      _repassword=repasswordinputcontroller.text;
                      if(_password!=_repassword){
                        showDialog(context: context, builder: (context){
                          return  Dialog(
                              child: Container(child: Text('reEnter the password correcty!!',style: TextStyle(color: Colors.red)),height: 45,)
                          );
                        });
                        repasswordinputcontroller.clear();
                      }
                      else{
                        if(await searchAccount(_email)==1){
                          showDialog(context: context, builder: (context){
                            return  Dialog(
                                child: Container(child: Text('Email already signed in!!',style: TextStyle(color: Colors.red),),height: 45,)
                            );
                          });
                          mailinputcontroller.clear();
                          repasswordinputcontroller.clear();
                          passwordinputcontroller.clear();
                        }
                        else{
                          final newacc=Account(email: _email, password: _password);
                          addAccount(newacc);
                          showDialog(context: context, builder: (context){
                            return  Dialog(
                                child:
                                Center(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children:[
                                        const Text('Successfully Signed in!!',style: TextStyle(color: Colors.red)),
                                        const SizedBox(height: 30),
                                        Padding(padding: const EdgeInsets.all(30),
                                          child: TextField(
                                            controller: namecontroller,
                                            decoration:const InputDecoration(hintText: 'Enter Name',
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                                    borderSide: BorderSide())
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 30,),
                                        ElevatedButton(
                                            onPressed:() async {
                                              await addDetails(_email, 1, namecontroller.text);
                                              loadPage(_email, context);
                                            }, child: const Text('OK'))
                                      ]
                                  ) ,
                                )
                            );
                          });
                        }
                      }
                    },
                    child:const Text(
                      "Sign In",
                    )),
              ]
          ),
        ));
  }
}














// import 'package:flutter/material.dart';
// import 'package:ammuna/db/functions/login_functions.dart';
// import 'package:ammuna/home.dart';
// import 'package:ammuna/db/model/data_model_account.dart';
//
//
//
// class Signup extends StatefulWidget {
//   const Signup({Key? key}) : super(key: key);
//
//   @override
//   State<Signup> createState() => _SignupState();
// }
//
// final mailinputcontroller=TextEditingController();
// final passwordinputcontroller=TextEditingController();
// final repasswordinputcontroller=TextEditingController();
// final namecontroller=TextEditingController();
// String email="",_password='',_repassword='';
//
//
// class _SignupState extends State<Signup> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffff5e6b),
//             body: Padding(padding:
//             const EdgeInsets.all(20),
//                child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(bottom: 70.0),
//                       child: Text('Sign Up',
//                       style:TextStyle(
//                         fontSize:35.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),),
//                     ),
//
//                     TextFormField(
//                          controller: mailinputcontroller,
//                            decoration: const InputDecoration(
//                                hintText: 'Email',
//                                hintStyle: TextStyle(color: Colors.white),
//                                border: InputBorder.none,
//                                enabledBorder: OutlineInputBorder(
//                                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                                    borderSide: BorderSide(
//                                      color:Colors.white,
//                                    )
//                                )
//                            ),
//                     ),
//
//                     const SizedBox(height:10),
//                     TextFormField(
//                       controller: passwordinputcontroller,
//                       decoration: const InputDecoration(
//                         hintText: 'Password',
//                           hintStyle: TextStyle(color: Colors.white),
//                         border: InputBorder.none,
//                         enabledBorder: OutlineInputBorder(
//                           borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                           borderSide: BorderSide(
//                             color:Colors.white,
//                           )
//                         )
//                       ),
//                     ),
//
//                     const SizedBox(height:10),
//                     TextFormField(
//                       controller: repasswordinputcontroller,
//                       decoration: const InputDecoration(
//                         hintText: 'Re enter Password',
//                           hintStyle: TextStyle(color: Colors.white),
//                         border: InputBorder.none,
//                         enabledBorder: OutlineInputBorder(
//                             borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                             borderSide: BorderSide(
//                               color:Colors.white,
//                             )
//                         )
//                     ),
//                     ),
//                     const SizedBox(height: 30),
//                     ElevatedButton(
//                         onPressed: () async {
//                           email=mailinputcontroller.text;
//                           _password=passwordinputcontroller.text;
//                           _repassword=repasswordinputcontroller.text;
//                           if(_password!=_repassword){
//                             showDialog(context: context, builder: (context){
//                               return  Dialog(
//                                   child: Container(child: Text('reEnter the password correcty!!',style: TextStyle(color: Colors.red)),height: 45,)
//                               );
//                             });
//                             repasswordinputcontroller.clear();
//                           }
//                           else{
//                             if(await searchAccount(email)==1){
//                               showDialog(context: context, builder: (context){
//                                 return  Dialog(
//                                     child: Container(child: Text('Email already signed in!!',style: TextStyle(color: Colors.red),),height: 45,)
//                                 );
//                               });
//                               mailinputcontroller.clear();
//                               repasswordinputcontroller.clear();
//                               passwordinputcontroller.clear();
//                             }
//                             else{
//                               final newacc=Account(email: email, password: _password);
//                               addAccount(newacc);
//                               showDialog(context: context, builder: (context){
//                                 return  Dialog(
//                                     child:
//                                     Center(
//                                       child: Column(
//                                           mainAxisAlignment: MainAxisAlignment.center,
//                                           children:[
//                                             const Text('Successfully Signed in!!',style: TextStyle(color: Colors.red)),
//                                             const SizedBox(height: 30),
//                                             Padding(padding: const EdgeInsets.all(30),
//                                               child: TextField(
//                                                 controller: namecontroller,
//                                                 decoration:const InputDecoration(hintText: 'Enter Name',
//                                                     border: OutlineInputBorder(
//                                                         borderRadius: BorderRadius.all(Radius.circular(4.0)),
//                                                         borderSide: BorderSide())
//                                                 ),
//                                               ),
//                                             ),
//                                             const SizedBox(height: 30,),
//                                             ElevatedButton(
//                                                 onPressed:() async {
//                                                   await addDetails(email, 1, namecontroller.text);
//                                                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
//                                                 },
//                                                 child: const Text('OK'))
//                                           ]
//                                       ) ,
//                                     )
//                                 );
//                               });
//                             }
//                           }
//                         },
//                         child:const Text(
//                           "Sign In",
//                         )
//                     ),
//             ],
//             ),
//             ),
//     );
//   }
// }
