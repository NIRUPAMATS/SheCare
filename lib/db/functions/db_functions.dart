import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:SheCare/db/model/data_model.dart';

ValueNotifier<List<FileData>> filelistnotifier=ValueNotifier([]);
Future<void> addFiles(FileData value) async{
  final studentDB=await Hive.openBox<FileData>('student_db');
  final _id=await studentDB.add(value);
  value.id=_id;
  await studentDB.put(_id,value);
  filelistnotifier.value.add(value);
  filelistnotifier.notifyListeners();
}
Future<void> getallFiles() async{
  final studentDB=await Hive.openBox<FileData>('student_db');
  filelistnotifier.value.clear();
  filelistnotifier.value.addAll(studentDB.values);
  filelistnotifier.notifyListeners();
}
Future<void> deleteFiles(int id) async{
  final studentDB=await Hive.openBox<FileData>('student_db');
  studentDB.delete(id);
  getallFiles();
  filelistnotifier.notifyListeners();
}
