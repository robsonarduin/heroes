import 'package:flutter/material.dart';
import 'package:heroes/model/appearance.dart';

class AppearanceWidget extends StatelessWidget {
  final Appearance appearance;
  const AppearanceWidget({required this.appearance, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Gender ${this.appearance.gender ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Eye Color ${this.appearance.eyeColor ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Hair Color ${this.appearance.hairColor ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Height ${this.appearance.height ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Weight ${this.appearance.weight ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Race ${this.appearance.race ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
