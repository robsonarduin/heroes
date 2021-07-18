import 'package:dio/dio.dart';
import 'package:heroes/data/util/api_response_helper.dart';
import 'package:heroes/model/powerstats.dart';
import 'package:heroes/model/appearance.dart';
import 'package:heroes/model/biography.dart';
import 'package:heroes/model/connections.dart';
import 'package:heroes/model/my_hero.dart';
import 'package:heroes/model/work.dart';

class HeroRepository extends ApiResponseHelper {
  final String baseUrl = 'https://akabab.github.io/superhero-api/api';
  final String all = '/all.json';
  final String byId = '/id/';
  final String powerStatsById = '/powerstats/';
  final String appearanceById = '/appearance/';
  final String biographyById = '/biography/';
  final String connectionsById = '/connections/';
  final String workById = '/work/';

  Future<List<MyHero>> getAll() async {
    final Response response = await Dio().get(baseUrl + all);
    List<dynamic> results = returnResponse(response);
    return (results).map((x) => MyHero.fromJson(x)).toList();
  }

  Future<MyHero> getById(int id) async {
    final Response response = await Dio().get(baseUrl + byId + '$id' + '.json');
    returnResponse(response.data);
    return MyHero.fromJson(response.data);
  }

  Future<Powerstats> getPowerStatsById(int id) async {
    final Response response = await Dio().get(baseUrl + powerStatsById + '$id' + '.json');
    returnResponse(response.data);
    return Powerstats.fromJson(response.data);
  }

  Future<Appearance> getAppearanceById(int id) async {
    final Response response = await Dio().get(baseUrl + appearanceById + '$id' + '.json');
    returnResponse(response.data);
    return Appearance.fromJson(response.data);
  }

  Future<Biography> getBiographyById(int id) async {
    final Response response = await Dio().get(baseUrl + biographyById + '$id' + '.json');
    returnResponse(response.data);
    return Biography.fromJson(response.data);
  }

  Future<Connections> getConnectionsById(int id) async {
    final Response response = await Dio().get(baseUrl + connectionsById + '$id' + '.json');
    returnResponse(response.data);
    return Connections.fromJson(response.data);
  }

  Future<Work> getWorkById(int id) async {
    final Response response = await Dio().get(baseUrl + workById + '$id' + '.json');
    returnResponse(response.data);
    return Work.fromJson(response.data);
  }
}
