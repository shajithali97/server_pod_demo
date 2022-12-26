/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class Todo extends _i1.SerializableEntity {
  Todo({
    this.id,
    required this.todoName,
    required this.isDone,
    required this.createdAt,
  });

  factory Todo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Todo(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      todoName: serializationManager
          .deserialize<String>(jsonSerialization['todoName']),
      isDone:
          serializationManager.deserialize<bool>(jsonSerialization['isDone']),
      createdAt: serializationManager
          .deserialize<DateTime>(jsonSerialization['createdAt']),
    );
  }

  int? id;

  String todoName;

  bool isDone;

  DateTime createdAt;

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'todoName': todoName,
      'isDone': isDone,
      'createdAt': createdAt,
    };
  }
}
