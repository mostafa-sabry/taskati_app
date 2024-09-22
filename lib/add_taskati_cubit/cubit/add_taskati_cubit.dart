import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskati_app/models/task_model.dart';

part 'add_taskati_state.dart';

class AddTaskatiCubit extends Cubit<AddTaskatiState> {
  AddTaskatiCubit() : super(AddTaskatiInitial());

  addTask(TaskModel task) async {
    emit(AddTaskatiLoading());
    try {
      var taskBox = Hive.box<TaskModel>('taskati');

      emit(AddTaskatiSuccess());
      await taskBox.add(task);
    } catch (e) {
      emit(AddTaskatiError(errorMessage: e.toString()));
    }
  }
}
