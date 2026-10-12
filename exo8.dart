class Livre {
  String titre;
  String auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages {
    return _pages;
  }

  void afficherInfos() {
    print('Titre: $titre, Auteur: $auteur');
  }

  static void afficherTotalLivres() {
    print('Nombre de livres: $totalLivres');
  }
}



void main() {
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry');
  var livre2 = Livre('L Etranger', 'Albert Camus');


  livre1.afficherInfos();
  livre2.afficherInfos();


  print(livre1.pages);
  Livre.afficherTotalLivres();
}