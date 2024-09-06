import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/flutter_task_widget.dart';

class NewListView extends StatelessWidget {
  const NewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return const FlutterTaskWidget();
        },
      ),
    );
  }
}
