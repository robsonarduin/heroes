import 'package:flutter/material.dart';
import 'package:heroes/model/my_hero.dart';

class HeroWidget extends StatelessWidget {
  final MyHero hero;
  const HeroWidget({required this.hero, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Name ${this.hero.name ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Slug ${this.hero.slug ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
