import 'package:hive/hive.dart';
part 'data_model_4.g.dart';
@HiveType(typeId: 4)
class FileData4{
  @HiveField(0)
  int? id4;
  @HiveField(1)
  String name4="";
  @HiveField(2)
  String num4="";
  // @HiveField(3)
  // bool? value;

  FileData4({required this.name4,required this.num4,this.id4});
}