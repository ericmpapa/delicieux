import 'package:cached_network_image/cached_network_image.dart';
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
        CachedNetworkImage(
          imageUrl: "https://picsum.photos/250?image=9",
          imageBuilder: (context, imageProvider) => Container(
            height: 164,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => Navigator.of(context).pushNamed(
                      '/desc_plat') //Navigator.of(context).pushNamed('/desc_plat',arguments: ),
                  ),
            ),
          ),
          placeholder: (context, url) => Container(
            height: 164,
            width: 164,
            decoration: BoxDecoration(
              color: util.couleurBlanche,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
              border: Border.all(color: util.couleurAccent),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: util.couleurAccent,
              ),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text(nom, style: util.normal2)),
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
