import 'package:hive/hive.dart';
part 'data_model_diary.g.dart';
@HiveType(typeId: 1)
class FileData_diary{
  @HiveField(0)
  int? id;
  @HiveField(1)
  String title="";
  @HiveField(2)
  String data="";
  @HiveField(3)
  String dateTime;

  FileData_diary({required this.title,required this.data,required this.dateTime,this.id});
}