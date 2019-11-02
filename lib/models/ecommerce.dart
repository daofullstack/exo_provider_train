class Categorie {
  int idCategorie;
  String nom;
  List<Produits> produits;

  Categorie({this.idCategorie, this.nom, this.produits});

  Categorie.fromJson(Map<String, dynamic> json) {
    idCategorie = json['idCategorie'];
    nom = json['nom'];
    if (json['produits'] != null) {
      produits = new List<Produits>();
      json['produits'].forEach((v) {
        produits.add(new Produits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idCategorie'] = this.idCategorie;
    data['nom'] = this.nom;
    if (this.produits != null) {
      data['produits'] = this.produits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Produits {
  int idProduit;
  String nom;
  String description;
  int prix;
  String image;
  List<Commandes> commandes;

  Produits(
      {this.idProduit,
        this.nom,
        this.description,
        this.prix,
        this.image,
        this.commandes});

  Produits.fromJson(Map<String, dynamic> json) {
    idProduit = json['idProduit'];
    nom = json['nom'];
    description = json['description'];
    prix = json['prix'];
    image = json['image'];
    if (json['commandes'] != null) {
      commandes = new List<Commandes>();
      json['commandes'].forEach((v) {
        commandes.add(new Commandes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idProduit'] = this.idProduit;
    data['nom'] = this.nom;
    data['description'] = this.description;
    data['prix'] = this.prix;
    data['image'] = this.image;
    if (this.commandes != null) {
      data['commandes'] = this.commandes.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Commandes {
  int idComamande;
  int quantite;
  String date;
  Utisateurs utisateurs;

  Commandes({this.idComamande, this.quantite, this.date, this.utisateurs});

  Commandes.fromJson(Map<String, dynamic> json) {
    idComamande = json['idComamande'];
    quantite = json['quantite'];
    date = json['date'];
    utisateurs = json['utisateurs'] != null
        ? new Utisateurs.fromJson(json['utisateurs'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idComamande'] = this.idComamande;
    data['quantite'] = this.quantite;
    data['date'] = this.date;
    if (this.utisateurs != null) {
      data['utisateurs'] = this.utisateurs.toJson();
    }
    return data;
  }
}

class Utisateurs {
  int id;
  String nom;
  String prenom;

  Utisateurs({this.id, this.nom, this.prenom});

  Utisateurs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    prenom = json['prenom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['prenom'] = this.prenom;
    return data;
  }
}
