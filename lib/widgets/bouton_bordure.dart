import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class BoutonBordure extends StatelessWidget {
  final double size;
  final String label;
  final Color color;

  const BoutonBordure({
    this.size = 0,
    this.label = "",
    this.color = util.couleurTexte,
  });

  @override
  Widget build(Object context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: util.couleurTexte),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Center(child: Text(label, style: util.normal1)),
          ),
        ),
      ),
    );
  }
}
