import 'package:hive/hive.dart';
import 'package:notes/local_storage/model.dart';

class NotesAdapter extends TypeAdapter<Notes> {
  @override
  int get typeId => 0;

  @override
  Notes read(BinaryReader reader) {
    return Notes()
      ..title = reader.read()
      ..content = reader.read();
  }

  @override
  void write(BinaryWriter writer, Notes obj) {
    writer
      ..write(obj.title)
      ..write(obj.content);
  }
}