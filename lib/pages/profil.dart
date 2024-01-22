import 'package:delicieux/widgets/delicieux_bouton.dart';
import 'package:delicieux/widgets/delicieux_textfield.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class Profil extends StatelessWidget {
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
        body: PanneauFond(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Nom", style: util.normal4),
              const SizedBox(height: 20),
              const DelicieuxTextfield(),
              const SizedBox(height: 20),
              Text("Prenom", style: util.normal4),
              const SizedBox(height: 20),
              const DelicieuxTextfield(),
              const SizedBox(height: 20),
              Text("Adresse", style: util.normal4),
              const SizedBox(height: 20),
              const DelicieuxTextfield(maxLines: 10),
              const SizedBox(height: 20),
              Text("Tél", style: util.normal4),
              const SizedBox(height: 20),
              const DelicieuxTextfield(),
              const SizedBox(height: 30),
              DelicieuxBouton(label: "Enregistrer", color: util.couleurAccent)
            ],
          ),
        ));
  }
}
