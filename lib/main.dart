import 'package:shecare/db/model/data_model_1.dart';
import 'package:shecare/fitness.dart';
import 'package:shecare/journal.dart';
import 'package:shecare/period.dart';
import 'package:shecare/toDoList.dart';
import 'package:shecare/signup.dart';
import 'package:shecare/login.dart';
import 'package:shecare/calendar.dart';
import 'package:shecare/home.dart';
import 'package:shecare/mydial.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shecare/db/functions/db_functions.dart';
import 'package:shecare/db/model/data_model.dart';
import 'package:shecare/splash_screen.dart';

import 'db/model/data_model_4.dart';

import 'db/model/data_model_account.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if(!Hive.isAdapterRegistered(FileDataAdapter().typeId)){
    Hive.registerAdapter(FileDataAdapter());
  }


  if(!Hive.isAdapterRegistered(AccountAdapter().typeId)){
    Hive.registerAdapter(AccountAdapter());
  }
  if(!Hive.isAdapterRegistered(AccountAdapter().typeId)){
    Hive.registerAdapter(AccountAdapter());
  }

  if(!Hive.isAdapterRegistered(FileData1Adapter().typeId)){
    Hive.registerAdapter(FileData1Adapter());
  }

  if(!Hive.isAdapterRegistered(FileData4Adapter().typeId)){
    Hive.registerAdapter(FileData4Adapter());
  }


  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getallFiles();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blueAccent),
<<<<<<< HEAD
=======

>>>>>>> 20e0d6bf63ffdfb75379a1b68cf9451f51244437
        home: Home()
    );
  }
}

