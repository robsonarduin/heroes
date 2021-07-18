import 'package:flutter/material.dart';
import 'package:heroes/model/work.dart';

class WorkWidget extends StatelessWidget {
  final Work work;
  const WorkWidget({required this.work, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Base ${this.work.base ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Occupation ${this.work.occupation ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
