import 'package:flutter/material.dart';

class DurumWidget extends StatelessWidget {
  final String? statusTitle;
  final String? statusTime;
  final String? statusImage;
  const DurumWidget({
    Key? key,
    this.statusTitle,
    this.statusTime,
    this.statusImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 30,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage('$statusImage'),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListTile(
            title: Text('$statusTitle'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text("$statusTime"),
            ),
          ),
        ),
      ],
    );
  }
}