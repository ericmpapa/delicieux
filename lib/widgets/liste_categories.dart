import 'package:delicieux/widgets/categorie_widget.dart';
import 'package:flutter/material.dart';

class ListeCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategorieWidget(libelle: "salades"),
          const SizedBox(width: 10),
          CategorieWidget(libelle: "patisseries"),
          const SizedBox(width: 10),
          CategorieWidget(libelle: "grillades"),
        ],
      ),
    );
  }
}
