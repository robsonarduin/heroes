import 'package:flutter/material.dart';
import 'package:heroes/model/powerstats.dart';

class PowerStatsWidget extends StatelessWidget {
  final Powerstats powerstats;
  const PowerStatsWidget({required this.powerstats, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Combat ${this.powerstats.combat ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Durability ${this.powerstats.durability ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Intelligence ${this.powerstats.intelligence ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Power ${this.powerstats.power ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Speed ${this.powerstats.speed ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
        Text(
          'Strength ${this.powerstats.strength ?? ''}',
          style: TextStyle(color: Colors.black.withOpacity(0.6)),
        ),
      ],
    );
  }
}
