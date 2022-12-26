import 'package:my_todo_pod_server/src/generated/protocol.dart';
import 'package:serverpod/database.dart';
import 'package:serverpod/server.dart';

class TodoEndpoint extends Endpoint {
  //Fetch todo from DB

  Future<List<Todo>> getTodos(Session session, {String? keyword}) async {
    return await Todo.find(session,
        where: (k) =>
            keyword != null ? k.todoName.like('%$keyword%') : Constant(true));
  }

  Future<bool> addTodo(Session session, Todo todo) async {
    await Todo.insert(session, todo);
    return true;
  }

  Future<bool> deleteTodo(Session session, int id) async {
    var result = await Todo.delete(
      session,
      where: (p0) => p0.id.equals(id),
    );
    return result == 1;
  }
}
