import 'package:flutter/material.dart';
import 'package:receitasapp/components/card_categoria.dart';
import 'package:receitasapp/constants.dart';
import 'package:receitasapp/data/dummy_data.dart';
import 'package:receitasapp/screens/tela_receitas.dart';

import '../models/receita.dart';

class Categorias extends StatelessWidget {
  List<Receita> receitasItalianas = [
    Receita(
        nome: "Spaghetti",
        tempo: 20,
        tipo: "Simples",
        custo: "Barata",
        img:
            "https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/36C4D0A8-A26C-438B-9871-27ABEABB2E66/Derivates/A94C5717-A483-4ADF-B8AE-6D170994FEA1.jpg"),
    Receita(
        nome: "Bolo de nata",
        tempo: 90,
        tipo: "Intermediária",
        custo: "Mediano",
        img:
            "https://cdn0.tudoreceitas.com/pt/posts/3/0/8/bolo_de_nata_ao_estilo_italiano_10803_orig.jpg")
  ];
  Categorias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Categorias"),
          leading: Icon(Icons.menu),
          backgroundColor: kPrimaryColor,
        ),
        body: GridView(
          padding: EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 3 / 2
          ),
          children: DUMMY_CATEGORIES.map((cat) => CardCategoria(category: cat)).toList(),
        )
      );
  }
}
