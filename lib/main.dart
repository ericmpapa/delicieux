import 'package:delicieux/pages/recherche.dart';
import 'package:flutter/material.dart';

import 'pages/acceuil.dart';
import 'pages/description_plat.dart';
import 'pages/historique_commandes.dart';
import 'pages/insertion_token.dart';
import 'pages/panier.dart';
import 'pages/profil.dart';
import 'package:delicieux/data/dao.dart' as dao;

void main() {
  dao.intialiser();
  runApp(
    MaterialApp(
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => Acceuil(),
        '/hist_commandes': (BuildContext context) => HistoriqueCommandes(),
        '/desc_plat': (BuildContext context) => DescriptionPlat(),
        '/insert_token': (BuildContext context) => InsertionToken(),
        '/panier': (BuildContext context) => Panier(),
        '/profil': (BuildContext context) => Profil(),
        '/recherche': (BuildContext context) => Recherche(),
      },
    ),
  );
}
