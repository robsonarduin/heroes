import 'package:flutter/material.dart';
import 'package:heroes/model/my_hero.dart';
import 'package:heroes/screens/widgets/appearance_widget.dart';
import 'package:heroes/screens/widgets/biography_widget.dart';
import 'package:heroes/screens/widgets/connections_widget.dart';
import 'package:heroes/screens/widgets/hero_widget.dart';
import 'package:heroes/screens/widgets/powerstats_widget.dart';
import 'package:heroes/screens/widgets/work_widget.dart';

class HeroDetail extends StatelessWidget {
  final MyHero hero;
  const HeroDetail({required this.hero, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text('${this.hero.name}'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(text: 'GENERAL'),
                Tab(text: 'APPEARANCE'),
                Tab(text: 'BIOGRAPHY'),
                Tab(text: 'CONNECTIONS'),
                Tab(text: 'POWERSTATS'),
                Tab(text: 'WORK'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: HeroWidget(hero: hero)),
              Center(child: AppearanceWidget(appearance: hero.appearance!)),
              Center(child: BiographyWidget(biography: hero.biography!)),
              Center(child: ConnectionsWidget(connections: hero.connections!)),
              Center(child: PowerStatsWidget(powerstats: hero.powerstats!)),
              Center(child: WorkWidget(work: hero.work!)),
            ],
          ),
        ),
      ),
    );
  }
}
