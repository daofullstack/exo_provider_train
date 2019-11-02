class cursus {
  int id;
  String nom;
  String image;
  List<Level> level;

  cursus({this.id, this.nom, this.image, this.level});

  cursus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nom = json['nom'];
    image = json['image'];
    if (json['level'] != null) {
      level = new List<Level>();
      json['level'].forEach((v) {
        level.add(new Level.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nom'] = this.nom;
    data['image'] = this.image;
    if (this.level != null) {
      data['level'] = this.level.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Level {
  String nom;
  String image;
  List<Stage> stage;

  Level({this.nom, this.image, this.stage});

  Level.fromJson(Map<String, dynamic> json) {
    nom = json['nom'];
    image = json['image'];
    if (json['stage'] != null) {
      stage = new List<Stage>();
      json['stage'].forEach((v) {
        stage.add(new Stage.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nom'] = this.nom;
    data['image'] = this.image;
    if (this.stage != null) {
      data['stage'] = this.stage.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Stage {
  String nom;
  List<Cour> cour;

  Stage({this.nom, this.cour});

  Stage.fromJson(Map<String, dynamic> json) {
    nom = json['nom'];
    if (json['cour'] != null) {
      cour = new List<Cour>();
      json['cour'].forEach((v) {
        cour.add(new Cour.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nom'] = this.nom;
    if (this.cour != null) {
      data['cour'] = this.cour.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cour {
  String titre;
  List<Video> video;

  Cour({this.titre, this.video});

  Cour.fromJson(Map<String, dynamic> json) {
    titre = json['titre'];
    if (json['video'] != null) {
      video = new List<Video>();
      json['video'].forEach((v) {
        video.add(new Video.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titre'] = this.titre;
    if (this.video != null) {
      data['video'] = this.video.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Video {
  String titre;
  String lien;

  Video({this.titre, this.lien});

  Video.fromJson(Map<String, dynamic> json) {
    titre = json['titre'];
    lien = json['lien'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['titre'] = this.titre;
    data['lien'] = this.lien;
    return data;
  }
}

