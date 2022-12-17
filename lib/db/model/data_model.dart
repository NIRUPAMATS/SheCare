import 'package:hive/hive.dart';
part 'data_model.g.dart';
@HiveType(typeId: 1)
class FileData{
  @HiveField(0)
  int? id;
  @HiveField(1)
  String filename="";
  @HiveField(2)
  String filedata="";
  @HiveField(3)
  bool? value;

  FileData({required this.filename,required this.filedata,required this.value,this.id});
}