import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroes/bloc/heroes/heroes.dart';
import 'package:heroes/data/provider/hero_provider.dart';
import 'package:heroes/model/my_hero.dart';

class HeroesCubit extends Cubit<HeroesState> {
  HeroesCubit() : super(HeroesState.initial());

  List<MyHero> listHeroes = [];

  Future<void> load() async {
    try {
      emit(HeroesState.loading());

      listHeroes = await HeroProvider().getAll();

      emit(HeroesState.success(message: ''));
    } catch (e) {
      emit(HeroesState.failure(message: e.toString()));
    }
  }
}
