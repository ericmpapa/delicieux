import 'package:delicieux/widgets/delicieux_searchfield.dart';
import 'package:delicieux/widgets/liste_plat.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class Recherche extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: util.couleurFond1,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Center(
          child: Text(
            "Recherche",
            style: util.titre1,
          ),
        ),
      ),
      backgroundColor: util.couleurFond1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DelicieuxSearchField(),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: PanneauFond(
              avecImageDeFond: true,
              child: const ListePlat(label: "Resultat"),
            ),
          )
        ],
      ),
    );
  }
}
