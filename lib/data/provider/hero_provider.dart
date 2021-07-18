import 'package:heroes/data/repository/hero_repository.dart';
import 'package:heroes/model/appearance.dart';
import 'package:heroes/model/biography.dart';
import 'package:heroes/model/connections.dart';
import 'package:heroes/model/my_hero.dart';
import 'package:heroes/model/powerstats.dart';
import 'package:heroes/model/work.dart';

class HeroProvider {
  Future<List<MyHero>> getAll() async {
    return await HeroRepository().getAll();
  }

  Future<MyHero> getById(int id) async {
    return await HeroRepository().getById(id);
  }

  Future<Powerstats> getPowerStatsById(int id) async {
    return await HeroRepository().getPowerStatsById(id);
  }

  Future<Appearance> getAppearanceById(int id) async {
    return await HeroRepository().getAppearanceById(id);
  }

  Future<Biography> getBiographyById(int id) async {
    return await HeroRepository().getBiographyById(id);
  }

  Future<Connections> getConnectionsById(int id) async {
    return await HeroRepository().getConnectionsById(id);
  }

  Future<Work> getWorkById(int id) async {
    return await HeroRepository().getWorkById(id);
  }
}
