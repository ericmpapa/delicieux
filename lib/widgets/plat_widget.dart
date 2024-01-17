import 'package:flutter/material.dart';

class PlatWidget extends StatelessWidget {
  String nom;
  String url;
  double prix;
  double nombreAchat;

  PlatWidget({
    this.nom = "",
    this.url = "",
    this.prix = 0,
    this.nombreAchat = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Material(
            child: InkWell(
              onTap: () {},
              child: Image.asset('assets/$url.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
