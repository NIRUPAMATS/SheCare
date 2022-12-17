import 'package:hive/hive.dart';
part 'data_model_1.g.dart';
@HiveType(typeId: 2)
class FileData1{
  @HiveField(0)
    int? id1;
  @HiveField(1)
  String? filename1="";
  @HiveField(2)
  String? filedata1="";
  @HiveField(3)
  String? date1="";

FileData1({required this.filename1,required this.filedata1,required this.date1,this.id1});
}