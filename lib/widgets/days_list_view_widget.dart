import 'package:flutter/material.dart';
import 'package:taskati_app/widgets/days_widget.dart';

class NewListViewDaysWidget extends StatelessWidget {
  const NewListViewDaysWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return const DaysWidget();
      },
    );
  }
}
