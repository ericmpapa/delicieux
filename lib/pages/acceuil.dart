import 'package:delicieux/widgets/bouton_panier.dart';
import 'package:delicieux/widgets/delicieux_searchfield.dart';
import 'package:delicieux/widgets/liste_categories.dart';
import 'package:delicieux/widgets/liste_plat.dart';
import 'package:delicieux/widgets/panneau_fond.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: util.couleurFond1,
        elevation: 0,
        actions: [BoutonPanier()],
        leading: Container(
          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
          child: GestureDetector(
            onTap: () {
              showMenu(
                context: context,
                position: const RelativeRect.fromLTRB(0, 55, 0, 0),
                items: const [
                  PopupMenuItem<int>(
                    child: ListTile(
                      iconColor: util.couleurAccent,
                      textColor: util.couleurAccent,
                      leading: Icon(Icons.person_pin_sharp),
                      title: Text('Profil'),
                    ),
                  ),
                  PopupMenuItem<int>(
                    child: ListTile(
                      iconColor: util.couleurTexte,
                      textColor: util.couleurTexte,
                      leading: Icon(Icons.input_sharp),
                      title: Text('Connexion'),
                    ),
                  ),
                ],
              );
            },
            child: const CircleAvatar(
              backgroundColor: util.couleurBordure,
              child: Icon(Icons.person, color: util.couleurBlanche),
            ),
          ),
        ),
      ),
      backgroundColor: util.couleurFond1,
      bottomNavigationBar: NavigationBar(
        indicatorColor: util.couleurAccent,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home, color: util.couleurBlanche),
            icon: Icon(Icons.home, color: util.couleurTexte),
            label: "acceuil",
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.shopping_cart, color: util.couleurBlanche),
            icon: Icon(Icons.shopping_cart, color: util.couleurTexte),
            label: "commandes",
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DelicieuxSearchField(),
                  const SizedBox(height: 20),
                  Text(
                    "Plats par catégorie",
                    textAlign: TextAlign.left,
                    style: util.titre1,
                  ),
                  const SizedBox(height: 10),
                  ListeCategories()
                ]),
          ),
          const SizedBox(height: 12),
          const Expanded(
            child: PanneauFond(
              avecImageDeFond: true,
              child: ListePlat(label: "Les plus recommandés"),
            ),
          )
        ],
      ),
    );
  }
}
