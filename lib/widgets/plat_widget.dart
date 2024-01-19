import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          height: 164,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/$url.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              nom,
              style: util.normal2,
            )),
            const SizedBox(width: 5),
            const Icon(Icons.star, color: util.couleurAccent, size: 24),
            const SizedBox(width: 5),
            Text("$nombreAchat", style: util.normal2),
            const SizedBox(width: 20),
            Text("$prix \$", style: util.normal3),
          ],
        ),
      ],
    );
  }
}
