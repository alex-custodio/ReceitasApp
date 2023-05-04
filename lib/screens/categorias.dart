import 'package:flutter/material.dart';
import 'package:receitasapp/components/card_categoria.dart';
import 'package:receitasapp/constants.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Categorias"),
          leading: Icon(Icons.menu),
          backgroundColor: kPrimaryColor,
        ),
        body: Column(
          children: [
            Row(
              children: [
                CardCategoria(
                  color: Colors.deepPurpleAccent,
                  categoriaNome: "Italiano",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) =>
                                TelaReceitas(receitas: receitasItalianas)));
                  },
                ),
                CardCategoria(
                  color: Colors.deepOrange,
                  categoriaNome: "Rápido & Fácil",
                  onPressed: () {},
                )
              ],
            ),
            Row(
              children: [
                CardCategoria(
                    color: Colors.orange,
                    categoriaNome: "Hambúrgueres",
                    onPressed: () {}),
                CardCategoria(
                    color: Color.fromARGB(255, 224, 211, 91),
                    categoriaNome: "Alemã",
                    onPressed: () {})
              ],
            ),
            Row(
              children: [
                CardCategoria(
                    color: Colors.orangeAccent,
                    categoriaNome: "Leve e Saudável",
                    onPressed: () {}),
                CardCategoria(
                    color: Color.fromARGB(255, 81, 177, 84),
                    categoriaNome: "Estética",
                    onPressed: () {})
              ],
            ),
            Row(
              children: [
                CardCategoria(
                    color: Colors.lightBlue,
                    categoriaNome: "Café da Manhã",
                    onPressed: () {}),
                CardCategoria(
                    color: Colors.lightGreenAccent,
                    categoriaNome: "Asiática",
                    onPressed: () {})
              ],
            ),
            Row(
              children: [
                CardCategoria(
                    color: Colors.pinkAccent,
                    categoriaNome: "Francesa",
                    onPressed: () {}),
                CardCategoria(
                    color: Color.fromARGB(255, 107, 132, 115),
                    categoriaNome: "Verão",
                    onPressed: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
