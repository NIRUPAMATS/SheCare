import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shecare/db/model/data_model_1.dart';

ValueNotifier<List<FileData1>> filelistnotifier=ValueNotifier([]);
Future<void> addFiles(FileData1 value) async{
    final studentDB=await Hive.openBox<FileData1>('student_db1');
    final _id=await studentDB.add(value);
    value.id1=_id;
    await studentDB.put(_id,value);
    filelistnotifier.value.add(value);
    filelistnotifier.notifyListeners();
}
Future<void> getallFiles() async{
    final studentDB=await Hive.openBox<FileData1>('student_db1');
    filelistnotifier.value.clear();
    filelistnotifier.value.addAll(studentDB.values);
    filelistnotifier.notifyListeners();
}
Future<void> deleteFiles(int id) async{
    final studentDB=await Hive.openBox<FileData1>('student_db1');
    studentDB.delete(id);
    getallFiles();
    filelistnotifier.notifyListeners();
}
