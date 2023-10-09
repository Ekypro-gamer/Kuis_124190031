import 'package:flutter/material.dart';
import 'package:kuis_ppam/pokemon_data.dart';

class HalamanDetail extends StatelessWidget {
  const HalamanDetail({super.key, required this.pokemon});
  final PokemonData pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
        backgroundColor: Colors.red,

      ),
      body: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width ,
          child: Image.network(pokemon.image, fit: BoxFit.fitHeight,),
        ),
        Center(
          child: Column(
            children: [
              Text(pokemon.name, style: TextStyle(color: Colors.black),
              ),
             Text('Type',
             style: TextStyle(
             fontSize: 17,
             fontWeight: FontWeight.bold,
             ),
              ),
              Text(pokemon.type[0], style: TextStyle(color: Colors.black),
              ),
              Text('Weakness',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(pokemon.weakness[0], style: TextStyle(color: Colors.black),
              ),
              // Text('Previous Evolution',
              //   style: TextStyle(
              //     fontSize: 17,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(pokemon.prevEvolution[0], style: TextStyle(color: Colors.black),
              // ),
              // Text('Next Evolution',
              //   style: TextStyle(
              //     fontSize: 17,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Text(pokemon.nextEvolution[0], style: TextStyle(color: Colors.black),
              // ),
            ],
          ),
        )
      ],),
    );
  }
}
