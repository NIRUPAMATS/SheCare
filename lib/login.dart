import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shecare/account.dart';
import 'package:shecare/db/functions/login_functions.dart';
import 'package:shecare/signup.dart';

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
      body: Container(
        padding: EdgeInsets.only(left:20,right: 20,),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
              margin: EdgeInsets.only(top:10.0,bottom: 40.0),
              child: Text('Log In',
                style:TextStyle(
                  fontSize:35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
            ),
            TextFormField(
              controller: mailcontroller,
              decoration: const InputDecoration(
                  hintText: 'email',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide(color: Colors.green, style : BorderStyle.solid,))),
            ),

            const SizedBox(height: 10),
            TextFormField(
              obscureText: true,
              controller: passwordcontroller,
              decoration: const InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      borderSide: BorderSide())),
            ),

            SizedBox(height: MediaQuery.of(context).size.height/50,),
            ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () async {
                  lemail=mailcontroller.text;
                  lpassword=passwordcontroller.text;
                  if(await checkPassword(lemail, lpassword)==0){
                    showDialog(context: context, builder: (context){
                      return const Dialog(child:Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('Invalid credentials',style: TextStyle(color: Colors.red),),
                      ),
                      );
                    });
                    mailcontroller.clear();
                    passwordcontroller.clear();
                  }
                  else{
                    //storeEmail(lemail);
                    loadPage(lemail, context);
                  }
                },
                child:const Text(
                  "Login",
                style:TextStyle(
                  color: Colors.pinkAccent ,
                  fontSize: 15.0,
                  letterSpacing: 1.0,
                  ),
                )),
            const SizedBox(height: 30),
            Row(
              children: [
                const Text("Don't have an account?"),
                TextButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx)=>SignIn())
                  );
                },
                    child: const Text(
                      "Sign In",
                      style:TextStyle(
                        color: Colors.white ,
                        fontSize: 15.0,
                        letterSpacing: 1.0,
                      ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
