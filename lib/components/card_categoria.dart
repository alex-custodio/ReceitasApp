import 'package:flutter/material.dart';

class CardCategoria extends StatelessWidget {
  final Color color;
  final String categoriaNome;
  final Function() onPressed;
  const CardCategoria(
      {super.key, required this.color, required this.categoriaNome, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        child: Container(
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.only(top: 12, left: 12),
            child: Text(
              categoriaNome,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 44, 44, 44)),
            ),
          ),
          width: 172,
          height: 100,
        ),
      ),
    );
  }
}
