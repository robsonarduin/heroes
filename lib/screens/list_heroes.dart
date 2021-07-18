import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heroes/bloc/heroes/heroes.dart';
import 'package:heroes/model/my_hero.dart' as hero;
import 'package:heroes/model/my_hero.dart';
import 'package:heroes/screens/hero_detail.dart';
import 'package:search_page/search_page.dart';

class ListHeroes extends StatefulWidget {
  ListHeroes({Key? key}) : super(key: key);

  @override
  _ListHeroesState createState() => _ListHeroesState();
}

class _ListHeroesState extends State<ListHeroes> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HeroesCubit()..load(),
      child: BlocConsumer<HeroesCubit, HeroesState>(
        listener: (context, state) {
          if (state.isFailure!)
            AwesomeDialog(
              context: context,
              dialogType: DialogType.ERROR,
              animType: AnimType.BOTTOMSLIDE,
              title: 'Ops. ocorreu um erro',
              desc: state.message,
              btnCancelOnPress: () {},
              btnOkOnPress: () {},
            )..show();
        },
        builder: (context, state) {
          if (state.isLoading!) return Center(child: SizedBox(height: 100, width: 100, child: CircularProgressIndicator()));

          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                title: Text('Heroes'),
                actions: [
                  IconButton(
                      onPressed: () {
                        showSearch(
                            context: context,
                            delegate: SearchPage<hero.MyHero>(
                              items: context.read<HeroesCubit>().listHeroes,
                              searchLabel: 'Search hero',
                              suggestion: Center(
                                child: Text('Filter hero by name'),
                              ),
                              failure: Center(
                                child: Text('No hero found :('),
                              ),
                              filter: (myHero) => [
                                myHero.name,
                              ],
                              builder: (myHero) => buidCard(myHero),
                            ));
                      },
                      icon: Icon(Icons.search))
                ],
              ),
              body: ListView.builder(
                itemCount: context.read<HeroesCubit>().listHeroes.length,
                itemBuilder: (context, index) {
                  final hero = context.read<HeroesCubit>().listHeroes[index];

                  return buidCard(hero);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buidCard(MyHero hero) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.network('${hero.images!.sm!}'),
            ),
            title: Text('${hero.name}'),
            subtitle: Text(
              '${hero.appearance!.gender ?? 'Não definido'}',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              children: [
                Text(
                  'Combat ${hero.powerstats!.combat ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(width: 10),
                Text(
                  'Durability ${hero.powerstats!.durability ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(width: 10),
                Text(
                  'Intelligence ${hero.powerstats!.intelligence ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(width: 10),
                Text(
                  'Power ${hero.powerstats!.power ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                SizedBox(width: 10),
                Text(
                  'Speed ${hero.powerstats!.speed}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          Image.network('${hero.images!.md!}'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'First Apperance ${hero.biography!.firstAppearance ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
                Text(
                  'Aliases ${hero.biography!.aliases ?? ''}',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ],
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HeroDetail(
                              hero: hero,
                            )),
                  );
                },
                child: const Text('DETAILS'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
