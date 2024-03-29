class Utilisateur {
  final String id;
  final String nom;
  final String prenom;
  final String adresse;
  final String avatarUrl;
  final String tel;
  final String email;

  Utilisateur(
    this.id,
    this.nom,
    this.prenom,
    this.adresse,
    this.avatarUrl,
    this.tel,
    this.email,
  );

  @override
  String toString() =>
      "Utilisateur {nom:$nom,prenom:$prenom,adresse:$adresse,avatarUrl:$avatarUrl,tel:$tel,email:$email}";
}

class Plat {
  final int id;
  final String nom;
  final String description;
  final double prixUnitaire;
  final String estimationLivraison;
  final String photoUrl;

  const Plat(
      {this.id = 0,
      this.nom = "",
      this.description = "",
      this.prixUnitaire = 0,
      this.estimationLivraison = "",
      this.photoUrl = ""});

  @override
  String toString() =>
      "Plat {id:$id,nom:$nom,description:$description,prixUnitaire:$prixUnitaire,estimationLivraison:$estimationLivraison,photUrl:$photoUrl}";
}

class DetailCommande {
  Plat plat;
  int qte;
  DetailCommande(this.plat, this.qte);
}

class Commande {
  final int idCommande;
  final Utilisateur utilisateur;
  final DateTime dateCommande;
  final List<DetailCommande> detailsCommande;

  Commande(this.idCommande, this.utilisateur, this.dateCommande,
      this.detailsCommande);

  @override
  String toString() =>
      "Commande {idCommande:$idCommande,dateCommande:$dateCommande,detailsCommande:$detailsCommande}";
}
