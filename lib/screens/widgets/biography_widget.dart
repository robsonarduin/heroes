import 'package:flutter/material.dart';
import 'package:heroes/model/biography.dart';

class BiographyWidget extends StatelessWidget {
  final Biography biography;
  const BiographyWidget({required this.biography, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Aliases ${this.biography.aliases ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Alignment ${this.biography.alignment ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Alter Egos ${this.biography.alterEgos ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'First Appearance ${this.biography.firstAppearance ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Full Name ${this.biography.fullName ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Place Of Birth ${this.biography.placeOfBirth ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Publisher ${this.biography.publisher ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
