import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shecare/db/model/data_model_4.dart';


ValueNotifier<List<FileData4>> filelistnotifier=ValueNotifier([]);
Future<void> addFiles(FileData4 value) async{
  final studentDB=await Hive.openBox<FileData4>('student_db4');
  final _id=await studentDB.add(value);
  value.id4=_id;
  await studentDB.put(_id,value);
  filelistnotifier.value.add(value);
  filelistnotifier.notifyListeners();
}
Future<void> getallFiles() async{
  final studentDB=await Hive.openBox<FileData4>('student_db4');
  filelistnotifier.value.clear();
  filelistnotifier.value.addAll(studentDB.values);
  filelistnotifier.notifyListeners();
}
Future<void> deleteFiles(int id) async{
  final studentDB=await Hive.openBox<FileData4>('student_db4');
  studentDB.delete(id);
  getallFiles();
  filelistnotifier.notifyListeners();
}
