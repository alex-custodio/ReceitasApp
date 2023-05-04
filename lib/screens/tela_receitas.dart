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
          ...receitas.map((e) => CardReceita(nome: e.nome, img: "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/36C4D0A8-A26C-438B-9871-27ABEABB2E66/Derivates/A94C5717-A483-4ADF-B8AE-6D170994FEA1.jpg", tempo: e.tempo, custo: e.custo, tipo: e.tipo,)).toList()
          
        ],
      ),
      backgroundColor: Color(0xFFfffce7),
    );
  }
}
