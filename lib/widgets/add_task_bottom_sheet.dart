import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/add_task_custom_botton.dart';
import 'package:taskati_app/widgets/custom_text_field_widget.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: AddTaskForm(),
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
