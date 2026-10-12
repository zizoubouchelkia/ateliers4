class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
  nombreTotal++;
  }
}

void main() {
  Tache('Faire les devoirs');
  Tache('Etudier Dart');
  Tache('Faire les exercices');

  print(Tache.nombreTotal);
}