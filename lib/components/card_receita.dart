import 'package:flutter/material.dart';
import 'package:receitasapp/constants.dart';

class CardReceita extends StatelessWidget {
  const CardReceita({super.key});

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
                  child: Image.network("https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/36C4D0A8-A26C-438B-9871-27ABEABB2E66/Derivates/A94C5717-A483-4ADF-B8AE-6D170994FEA1.jpg", fit: BoxFit.cover, height: 240, width: double.infinity,),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("ddd"),
                  Text("ddd"),
                  Text("ddd")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
