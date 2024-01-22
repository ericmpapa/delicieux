import 'package:delicieux/widgets/delicieux_bouton.dart';
import 'package:delicieux/widgets/image_aureole.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class HistoriqueCommandes extends StatelessWidget {
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
            "Commandes",
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
                Text("Commande N°", style: util.normal5),
                const SizedBox(height: 20),
                Text("Date: 14 janv 2024", style: util.normal5),
                const SizedBox(height: 20),
                Text("Adresse:", style: util.normal5),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: PanneauFond(
                avecImageDeFond: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView(
                        children: [
                          Row(
                            children: [
                              ImageAureole(size: 130),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Poulet frites", style: util.titre2),
                                  const SizedBox(height: 20),
                                  Text("Prix 20\$", style: util.titre2),
                                  const SizedBox(height: 20),
                                  Text("Qté 20", style: util.titre2),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text("Total de la commande", style: util.normal5),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text("30 \$", style: util.titre1),
                        const SizedBox(width: 10),
                        Expanded(
                          child: DelicieuxBouton(
                            label: "commander à nouveau",
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
