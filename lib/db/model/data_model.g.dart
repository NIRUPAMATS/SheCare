// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FileDataAdapter extends TypeAdapter<FileData> {
  @override
  final int typeId = 1;

  @override
  FileData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FileData(
      filename: fields[1] as String,
      filedata: fields[2] as String,
      value: fields[3] as bool?,
      id: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, FileData obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.filename)
      ..writeByte(2)
      ..write(obj.filedata)
      ..writeByte(3)
      ..write(obj.value);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FileDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
