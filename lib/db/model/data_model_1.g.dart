// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_1.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileData1Adapter extends TypeAdapter<FileData1> {
  @override
  final int typeId = 2;

  @override
  FileData1 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileData1(
      filename1: fields[1] as String?,
      filedata1: fields[2] as String?,
      date1: fields[3] as String?,
      id1: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FileData1 obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id1)
      ..writeByte(1)
      ..write(obj.filename1)
      ..writeByte(2)
      ..write(obj.filedata1)
      ..writeByte(3)
      ..write(obj.date1);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileData1Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
