import 'package:delicieux/widgets/delicieux_searchfield.dart';
import 'package:delicieux/widgets/liste_categories.dart';
import 'package:delicieux/widgets/liste_top_recommandation.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class Acceuil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: util.couleurFond1,
        elevation: 0,
      ),
      backgroundColor: util.couleurFond1,
      bottomNavigationBar: NavigationBar(
        indicatorColor: util.couleurAccent,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: util.couleurBlanche,
            ),
            icon: Icon(Icons.home, color: util.couleurTexte),
            label: "acceuil",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
              color: util.couleurBlanche,
            ),
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
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
              decoration: const BoxDecoration(
                color: util.couleurFond2,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.zero,
                ),
              ),
              child: ListeTopRecommandation(),
            ),
          )
        ],
      ),
    );
  }
}
