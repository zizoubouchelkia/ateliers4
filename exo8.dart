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

class Roman extends Livre {
  String genre;

  Roman(String titre, String auteur, this.genre) : super(titre, auteur);

  void afficherGenre() {
    afficherInfos();
    print('Genre: $genre');
  }
}

void main() {
  var livre1 = Livre('Le Petit Prince', 'Antoine de Saint-Exupéry');
  var livre2 = Livre('L Etranger', 'Albert Camus');
  var roman1 = Roman('Sherlock Holmes', 'Arthur Conan Doyle', 'Policier');
  var roman2 = Roman('Les Misérables', 'Victor Hugo', 'Historique');

  livre1.afficherInfos();
  livre2.afficherInfos();
  roman1.afficherGenre();
  roman2.afficherGenre();

  print(livre1.pages);
  Livre.afficherTotalLivres();
}