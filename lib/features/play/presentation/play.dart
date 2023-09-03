import 'package:flutter/material.dart';

class Play extends StatelessWidget {
  const Play({super.key, required this.gameName});

  final String gameName;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(gameName),
    );
  }
}
