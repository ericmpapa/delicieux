import 'package:delicieux/data/model.dart';
import 'package:delicieux/widgets/plat_widget.dart';
import 'package:flutter/material.dart';
import 'package:delicieux/util/util.dart' as util;
import 'package:delicieux/data/dao.dart' as dao;

class ListePlat extends StatelessWidget {
  final String label;
  const ListePlat({this.label = ""});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Plat>>(
      future: dao.getTopRecommandation(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(color: util.couleurAccent),
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(label, style: util.titre1),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return PlatWidget(plat: snapshot.data![index]);
                  },
                ),
              )
            ],
          );
        }
      },
    );
  }
}
