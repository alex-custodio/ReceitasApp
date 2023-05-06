import 'package:flutter/material.dart';

import '../models/category.dart';

class CardCategoria extends StatelessWidget {
  final Category category;
  const CardCategoria({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title, style: Theme.of(context).textTheme.headline1,),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(colors: [
          category.color.withOpacity(0.5),
          category.color,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight)
      ),
    );
  }
}
