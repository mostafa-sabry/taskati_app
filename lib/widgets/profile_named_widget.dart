import 'package:flutter/material.dart';

class ProfileNamed extends StatelessWidget {
  const ProfileNamed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Mostafa',
                style: TextStyle(
                  color: Color(0xFF4e5ae8),
                  fontSize: 15,
                ),
              ),
              Text(
                'Have A Nice Day',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        CircleAvatar(
          backgroundImage: AssetImage('assets/images/mostafa.jpg'),
          radius: 25,
        ),
      ],
    );
  }
}
