import 'package:cached_network_image/cached_network_image.dart';
import 'package:delicieux/data/model.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class PlatWidget extends StatelessWidget {
  Plat plat;

  PlatWidget({this.plat = const Plat()});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CachedNetworkImage(
          imageUrl: plat.photoUrl,
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
        const SizedBox(height: 5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Text(plat.nom, style: util.normal2)),
            const SizedBox(width: 5),
            const Icon(Icons.star, color: util.couleurAccent, size: 24),
            const SizedBox(width: 5),
            Text("0", style: util.normal2),
            const SizedBox(width: 20),
            Text("${plat.prixUnitaire} \$", style: util.normal3),
          ],
        ),
      ],
    );
  }
}
