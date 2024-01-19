import 'package:delicieux/widgets/panneau_arrondi.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class DescriptionPlat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: util.couleurFond1,
          elevation: 0,
          title: Center(
            child: Text(
              "Descrition du plat",
              style: util.titre1,
            ),
          ),
        ),
        backgroundColor: util.couleurFond1,
        body: Stack(
          children: [
            PanneauArrondi(
              margin: const EdgeInsets.fromLTRB(0, 230, 0, 0),
            )
          ],
        ));
  }
}
