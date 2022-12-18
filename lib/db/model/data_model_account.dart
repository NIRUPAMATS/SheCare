import 'package:hive/hive.dart';
part 'data_model_account.g.dart';
@HiveType(typeId:3)
class Account{
  @HiveField(0)
  int? id;
  @HiveField(1)
  String email="";
  @HiveField(2)
  String password="";
  @HiveField(3)
  String name="";
  @HiveField(4)
  String age="";
  @HiveField(5)
  String height="";
  @HiveField(6)
  String weight="";
  @HiveField(7)
  String bloodgroup="";
  @HiveField(8)
  String lastperiod="";
  @HiveField(9)
  String periodlength="";
  Account({required this.email,required this.password,this.id});
}