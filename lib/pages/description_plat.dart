import 'package:delicieux/widgets/bouton_bordure.dart';
import 'package:delicieux/widgets/delicieux_bouton.dart';
import 'package:delicieux/widgets/image_aureole.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
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
          alignment: Alignment.topCenter,
          children: [
            PanneauFond(
              scrollable: true,
              margin: const EdgeInsets.fromLTRB(0, 230, 0, 0),
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Poulet frites 1/2 kg",
                          overflow: TextOverflow.ellipsis,
                          style: util.titre1,
                        ),
                        const SizedBox(width: 20),
                        Text("10 \$", style: util.titre1),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: util.couleurAccent,
                          size: 24,
                        ),
                        const SizedBox(width: 5),
                        Text("4.9 k", style: util.normal1),
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.timelapse,
                          color: util.couleurAccent,
                          size: 24,
                        ),
                        const SizedBox(width: 5),
                        Text("2 - 3 heures", style: util.normal1),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Poulet frites 1/2 kg",
                      overflow: TextOverflow.ellipsis,
                      style: util.titre1,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Poulet frits, pommes de terre",
                      overflow: TextOverflow.ellipsis,
                      style: util.normal1,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BoutonBordure(size: 50, label: "-"),
                        Text("1", style: util.normal1),
                        BoutonBordure(size: 50, label: "+"),
                        DelicieuxBouton(
                          label: "Ajouter au panier",
                          color: util.couleurAccent,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            ImageAureole(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              size: 250,
            )
          ],
        ));
  }
}
