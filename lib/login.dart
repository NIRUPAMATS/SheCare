import 'package:SheCare/signup.dart';
import 'package:flutter/material.dart';
import 'package:SheCare/db/functions/login_functions.dart';

import 'home.dart';


final mailinputcontroller=TextEditingController();
final passwordinputcontroller=TextEditingController();
final namecontroller=TextEditingController();

String _email="",_password='',_repassword='';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

final mailcontroller = TextEditingController();
final passwordcontroller = TextEditingController();

String lemail='',lpassword='';

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff5e6b),
      body: Padding(padding:
      const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
               child:CircleAvatar(
                  backgroundImage:  AssetImage('assets/emblem.jpeg'),
                 radius: 60.0,
            ),
            ),
            Container(
              margin: EdgeInsets.only(top:10.0,bottom: 70.0),
              child: Text('Log In',
                style:TextStyle(
                  fontSize:35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),

            TextFormField(
              controller: mailinputcontroller,
              decoration: const InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(
                        color:Colors.white,
                      )
                  )
              ),
            ),

            const SizedBox(height:10),
            TextFormField(
              controller: passwordinputcontroller,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(
                        color:Colors.white,
                      )
                  )
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/50,),
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () async {
                lemail=mailcontroller.text;
                lpassword=passwordcontroller.text;
                if(await checkPassword(lemail, lpassword)==0){
                  showDialog(context: context, builder: (context){
                    return const Dialog(child:Text('Invalid credentials',style: TextStyle(color: Colors.red),),
                  );
                }
              );
              mailcontroller.clear();
              passwordcontroller.clear();
              }
              else{
                loadPage(lemail, context);
              }
              },
                child: Text(
                  'Login',
                  style:TextStyle(
                  color: Colors.pinkAccent ,
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                  ),
                ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx)=>SignIn())
                  );
                },
                    child: const Text("Sign In",
                    style: TextStyle(
                      color: Colors.white,
                    ),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
