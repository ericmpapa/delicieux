import 'package:delicieux/widgets/bouton_bordure.dart';
import 'package:delicieux/widgets/delicieux_bouton.dart';
import 'package:delicieux/widgets/image_aureole.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class Panier extends StatelessWidget {
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
            "Panier",
            style: util.titre1,
          ),
        ),
      ),
      backgroundColor: util.couleurFond1,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PanneauFond(
                avecImageDeFond: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text("Poulet frits",
                                        style: util.titre2),
                                  ),
                                  Text("30 \$", style: util.titre2),
                                ],
                              ),
                              Row(
                                children: [
                                  ImageAureole(size: 130),
                                  const SizedBox(width: 50),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            BoutonBordure(label: "-", size: 50),
                                            Text("1", style: util.normal5),
                                            BoutonBordure(label: "+", size: 50),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        DelicieuxBouton(
                                          label: "supprimer",
                                          color: util.couleurDanger,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Total de la commande", style: util.normal5),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text("20 \$", style: util.titre1),
                        const SizedBox(width: 10),
                        Expanded(
                          child: DelicieuxBouton(
                            label: "valider",
                            color: util.couleurAccent,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
