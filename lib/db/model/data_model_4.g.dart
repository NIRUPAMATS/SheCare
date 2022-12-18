// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model_4.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileData4Adapter extends TypeAdapter<FileData4> {
  @override
  final int typeId = 4;

  @override
  FileData4 read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileData4(
      name4: fields[1] as String,
      num4: fields[2] as String,
      id4: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FileData4 obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id4)
      ..writeByte(1)
      ..write(obj.name4)
      ..writeByte(2)
      ..write(obj.num4);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileData4Adapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
