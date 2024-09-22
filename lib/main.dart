import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:taskati_app/add_taskati_cubit/cubit/add_taskati_cubit.dart';
import 'package:taskati_app/models/task_model.dart';
import 'package:taskati_app/screens/home_screen.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('taskati');
  Hive.registerAdapter(TaskModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddTaskatiCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
