import 'package:delicieux/data/model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void intialiser() async {
  await Supabase.initialize(
    url: 'https://bwovhxcvdabcefjmxfei.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ3b3ZoeGN2ZGFiY2Vmam14ZmVpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDQzODU5OTcsImV4cCI6MjAxOTk2MTk5N30.7K8hOG9rYYujKaADz5VfBxtInM4PQsQk0Iss8EErtmc',
  );
}

Future<List<Plat>> getTopRecommandation() async {
  var ret = <Plat>[];
  return Supabase.instance.client
      .from('plat')
      .select('id,nom,description,prixUnitaire,estimationLivraison,photoUrl')
      .limit(5)
      .then((value) {
    ret = value
        .map(
          (tabValue) => Plat(
            id: int.parse(tabValue['id']),
            nom: tabValue['nom'],
            description: tabValue['description'],
            prixUnitaire: double.parse(tabValue['prixUnitaire']),
            estimationLivraison: tabValue['estimationLivraision'],
            photoUrl: tabValue['photoUrl'],
          ),
        )
        .toList();
    return ret;
  });
}
