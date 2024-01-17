import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;
import 'package:flutter_svg/flutter_svg.dart';

class CategorieWidget extends StatelessWidget {
  String libelle;

  CategorieWidget({this.libelle = ""});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/$libelle.svg',
              height: 48,
              width: 48,
            ),
            const SizedBox(height: 5),
            Text(libelle, style: util.normal1),
          ],
        ),
      ),
    );
  }
}
