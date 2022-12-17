// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_diary.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileDatadiaryAdapter extends TypeAdapter<FileData_diary> {
  @override
  final int typeId = 1;

  @override
  FileData_diary read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileData_diary(
      title: fields[1] as String,
      data: fields[2] as String,
      dateTime: fields[3] as String,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FileData_diary obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.data)
      ..writeByte(3)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileDatadiaryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
