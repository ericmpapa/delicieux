import 'package:delicieux/widgets/plat_widget.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;

class ListePlat extends StatelessWidget {
  final String label;
  const ListePlat({this.label = ""});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(label, style: util.titre1),
        const SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: [
              PlatWidget(
                nom: "Poulet frites",
                url: "poulet_frites",
                prix: 10,
                nombreAchat: 100,
              ),
            ],
          ),
        )
      ],
    );
  }
}
