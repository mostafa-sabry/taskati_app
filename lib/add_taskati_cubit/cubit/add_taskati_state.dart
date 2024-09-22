part of 'add_taskati_cubit.dart';

@immutable
sealed class AddTaskatiState {}

final class AddTaskatiInitial extends AddTaskatiState {}

final class AddTaskatiLoading extends AddTaskatiState {}

final class AddTaskatiSuccess extends AddTaskatiState {}

final class AddTaskatiError extends AddTaskatiState {
  final String errorMessage;
  AddTaskatiError({required this.errorMessage});
}
