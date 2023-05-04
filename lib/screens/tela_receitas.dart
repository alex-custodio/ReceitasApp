import 'package:flutter/material.dart';
import 'package:receitasapp/constants.dart';

import '../components/card_receita.dart';
import '../models/receita.dart';

class TelaReceitas extends StatelessWidget {
  List<Receita> receitas;
  TelaReceitas({super.key, required this.receitas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text("Receitas")
      ),
      body: ListView(
        children: [
          ...receitas.map((e) => CardReceita(nome: e.nome, img: e.img, tempo: e.tempo, custo: e.custo, tipo: e.tipo,)).toList()
          
        ],
      ),
      backgroundColor: Color(0xFFfffce7),
    );
  }
}
