import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class ReUseTextContent extends StatelessWidget {
  final String textHint;
  const ReUseTextContent({super.key, required this.textHint});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: size.height / 50),
      decoration: BoxDecoration(
          gradient:
              const LinearGradient(colors: [Colors.blueAccent, Colors.blue]),
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        textHint,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
