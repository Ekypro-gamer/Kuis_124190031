import 'package:flutter/material.dart';
import 'package:kuis_ppam/halaman_detail.dart';
import 'package:kuis_ppam/pokemon_data.dart';
import 'package:kuis_ppam/main.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    var pokemonDataList;
    var pokemonData;
    return Scaffold(
        appBar: AppBar(
          title: Text("Pokedex"),
          backgroundColor: Colors.red,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 220,
              childAspectRatio: 3/2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
            itemCount: listPokemon.length,
            itemBuilder: (context, index) {
              final PokemonData pokemon = listPokemon[index];
              return InkWell(
                onTap: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context){
                    return HalamanDetail(pokemon: pokemon);
                  }));
                },
                child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width / 3,
                          child: Image.network(pokemon.image, fit: BoxFit.fitHeight,),
                        ),
                        SizedBox(width: 30,),
                        Text(pokemon.name)
                      ],
                    )
                ),
              );
            }
        ));
  }
}
