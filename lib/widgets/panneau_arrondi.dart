import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;
import 'package:flutter_svg_provider/flutter_svg_provider.dart'
    as flutter_svg_provider;

class PanneauArrondi extends StatelessWidget {
  bool avecImageDeFond;
  Widget? child;
  EdgeInsets? margin;
  PanneauArrondi({this.avecImageDeFond = false, this.child, this.margin});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
      decoration: BoxDecoration(
        color: util.couleurFond2,
        shape: BoxShape.rectangle,
        image: avecImageDeFond
            ? const DecorationImage(
                alignment: Alignment(1, -0.9),
                image: flutter_svg_provider.Svg('assets/leaf.svg'),
              )
            : null,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      child: child,
    );
  }
}
