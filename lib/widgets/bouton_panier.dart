import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:delicieux/util/util.dart' as util;

class BoutonPanier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Badge(
                label: Text(
                  '0',
                  style: util.styleBadge,
                ),
                backgroundColor: util.couleurDanger,
                child: SvgPicture.asset(
                  'assets/panier.svg',
                  height: 32,
                  width: 32,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                'passer la commande',
                style: util.normal4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
