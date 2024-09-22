import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:taskati_app/models/task_model.dart';

part 'add_taskati_state.dart';

class AddTaskatiCubit extends Cubit<AddTaskatiState> {
  AddTaskatiCubit() : super(AddTaskatiInitial());

  addTask(TaskModel task) {
    Hive.box('taskati');
  }
}
