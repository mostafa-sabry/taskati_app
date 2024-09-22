import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:taskati_app/add_taskati_cubit/cubit/add_taskati_cubit.dart';
import 'package:taskati_app/widgets/add_task_custom_botton.dart';
import 'package:taskati_app/widgets/custom_text_field_widget.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: BlocConsumer<AddTaskatiCubit, AddTaskatiState>(
          listener: (context, state) {
            if (state is AddTaskatiError) {
              print('failed ${state.errorMessage}');
            }

            if (state is AddTaskatiSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddTaskatiLoading ? true : false,
                child: AddTaskForm());
          },
        ),
      ),
    );
  }
}

class AddTaskForm extends StatefulWidget {
  const AddTaskForm({
    super.key,
  });

  @override
  State<AddTaskForm> createState() => _AddTaskFormState();
}

class _AddTaskFormState extends State<AddTaskForm> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            onSaved: (Value) {
              title = Value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (Value) {
              subtitle = Value;
            },
            hint: 'Note',
            maxLines: 5,
          ),
          const SizedBox(
            height: 60,
          ),
          CustomButton(
            onTap: () {
              if (globalKey.currentState!.validate()) {
                globalKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
