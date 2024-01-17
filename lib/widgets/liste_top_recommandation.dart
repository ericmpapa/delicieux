import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class ListeTopRecommandation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Les plus recommandés',
          style: util.titre1,
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView(),
        )
      ],
    );
  }
}
