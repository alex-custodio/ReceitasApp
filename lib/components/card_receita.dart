import 'package:flutter/material.dart';
import 'package:receitasapp/constants.dart';

class CardReceita extends StatelessWidget {
  final String nome;
  final int tempo;
  final String tipo;
  final String custo;
  final String img;
  CardReceita({
    required this.nome,
    required this.tempo,
    required this.tipo,
    required this.custo,
    required this.img
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.network(img, fit: BoxFit.cover, height: 240, width: double.infinity,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.schedule),
                  Text("$tempo min"),
                  SizedBox(width: 36,),
                  Icon(Icons.work),
                  Text("$tipo"),
                  SizedBox(width: 36,),
                  Icon(Icons.attach_money),
                  Text("$custo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
