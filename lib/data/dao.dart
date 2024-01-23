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
  print("hello");
  return Supabase.instance.client
      .from('plat')
      .select('id,nom,description,prixunitaire,estimationlivraision,photourl')
      .limit(5)
      .then((value) {
    ret = value
        .map(
          (tabValue) => Plat(
            id: int.parse(tabValue['id'].toString()),
            nom: tabValue['nom'],
            description: tabValue['description'],
            prixUnitaire: double.parse(tabValue['prixunitaire'].toString()),
            estimationLivraison: tabValue['estimationlivraision'],
            photoUrl: tabValue['photourl'],
          ),
        )
        .toList();
    print(ret);
    return ret;
  });
}
