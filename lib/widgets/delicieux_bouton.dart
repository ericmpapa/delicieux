import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class DelicieuxBouton extends StatelessWidget {
  final String label;
  Color? color;

  DelicieuxBouton({this.label = "", this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Text(label, style: util.couleurTexteBoutonDelicieux),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
