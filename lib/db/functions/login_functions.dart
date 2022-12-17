import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ammuna/db/model/data_model_account.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ammuna/account.dart';
List<Account> accounts = <Account>[];
Future<void> addAccount(Account value) async{
  final accountdb=await Hive.openBox<Account>('accountdb');
  final _id=await accountdb.add(value);
  value.id=_id;
  accountdb.put(_id, value);
  accounts.add(value);
}
Future<void> getAllAccounts() async{
  final accountdb=await Hive.openBox<Account>('accountdb');
  accounts.clear();
  accounts.addAll(accountdb.values);
}
Future<void>clear_notes()async{
  await getAllAccounts();
  for(int i=0;i<accounts.length;i++){
    accounts[i].notes.clear();
    accounts[i].drank=0;
  }
}
Future<int> searchAccount(String value) async {
  await getAllAccounts();
  for(int i=0;i<accounts.length;i++){
    if(accounts[i].email==value){
      return 1;
    }
  }
  return 0;
}
Future<int> checkPassword(String email,String password) async {
  await getAllAccounts();
  for(int i=0;i<accounts.length;i++){
    if(accounts[i].email==email){
      if(accounts[i].password==password){
        return 1;
      }
    }
  }
  return 0;
}
Future<void> addDetails(String email,int type,String value)async{
  final accountdb=await Hive.openBox<Account>('accountdb');
  await getAllAccounts();
  for(int i=0;i<accounts.length;i++){
    if(accounts[i].email==email){
      switch(type){
        case 1:accounts[i].name=value;
        break;
        case 2:accounts[i].age=value;
        break;
        case 3:accounts[i].height=value;
        break;
        case 4:accounts[i].weight=value;
        break;
        case 5:accounts[i].bloodgroup=value;
        break;
        case 6:accounts[i].address=value;
        break;
        case 7:accounts[i].notes.add(value);
        break;
        case 8:accounts[i].drank=int.parse(value);
        break;
      }
      accountdb.put(accounts[i].id, accounts[i]);
    }
  }
}
Future<void>loadPage(String email,BuildContext ctx) async{
  await getAllAccounts();
  for(int i=0;i<accounts.length;i++){
    if(accounts[i].email==email){
      Navigator.of(ctx).push(MaterialPageRoute(builder: ((context) => account(newaccount: accounts[i]))));
    }
  }
}