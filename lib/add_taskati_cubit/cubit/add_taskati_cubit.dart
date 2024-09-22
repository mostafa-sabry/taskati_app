import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_taskati_state.dart';

class AddTaskatiCubit extends Cubit<AddTaskatiState> {
  AddTaskatiCubit() : super(AddTaskatiInitial());
}
