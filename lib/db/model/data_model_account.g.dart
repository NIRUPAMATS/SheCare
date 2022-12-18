// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountAdapter extends TypeAdapter<Account> {
  @override
  final int typeId = 3;

  @override
  Account read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Account(
      email: fields[1] as String,
      password: fields[2] as String,
      id: fields[0] as int?,
    )
      ..name = fields[3] as String
      ..age = fields[4] as String
      ..height = fields[5] as String
      ..weight = fields[6] as String
      ..bloodgroup = fields[7] as String
      ..lastperiod = fields[8] as String
      ..periodlength = fields[9] as String;
  }

  @override
  void write(BinaryWriter writer, Account obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.password)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.age)
      ..writeByte(5)
      ..write(obj.height)
      ..writeByte(6)
      ..write(obj.weight)
      ..writeByte(7)
      ..write(obj.bloodgroup)
      ..writeByte(8)
      ..write(obj.lastperiod)
      ..writeByte(9)
      ..write(obj.periodlength);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
