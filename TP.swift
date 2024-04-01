func afficherNombres(_ premiers: Int, _ pairs: Bool) {
  var nombre = pairs ? 0 : 1 // Définir le premier nombre (pair ou impair)
  var compteur = 0 // Initialiser le compteur

  while compteur < premiers {
    print(nombre)
    nombre += pairs ? 2 : 2 // Incrémenter selon la parité
    compteur += 1
  }
}
print("La suite de x nombres:")
afficherNombres(12, true)

func afficherFibonacci(premiers: Int) {
  var a = 0 // Premier nombre (0)
  var b = 1 // Deuxième nombre (1)
  var compteur = 0 // Compteur

  while compteur < premiers {
    print(a)
    let temp = a + b // Calcul du prochain nombre
    a = b // Décalage des valeurs
    b = temp // Stockage du nouveau nombre
    compteur += 1
  }
}
print("\n La x suite de fibonacci:")
afficherFibonacci(premiers: 12)

func factoriel(x: Int = 10) -> Int {
  if x < 0 {
    fatalError("Le nombre doit être positif")
  }

  var resultat = 1
  for i in 1...x {
    resultat *= i
  }

  return resultat
}
print("\n Le factoriel de x:")
print(factoriel(x : 12))

func afficherNombresPremiers(premiers: Int) {
  var nombresPremiers = [2] // Tableau pour stocker les nombres premiers
  var candidat = 3 // Premier candidat à tester (après 2)

  while nombresPremiers.count < premiers {
    var estPremier = true // Drapeau indiquant si le candidat est premier

    // Itérer sur les nombres premiers déjà trouvés
    for nombre in nombresPremiers {
      // Si le candidat est divisible par un nombre premier, il n'est pas premier
      if candidat % nombre == 0 {
        estPremier = false
        break // Quitter la boucle interne
      }
    }

    // Si le candidat est premier, l'ajouter au tableau et passer au suivant
    if estPremier {
      nombresPremiers.append(candidat)
    }
    candidat += 2 // Incrémenter le candidat de 2 (tester uniquement les nombres impairs)
  }

  // Afficher les nombres premiers
  for nombre in nombresPremiers {
    print(nombre)
  }
}
print("\n Les x nombres premiers sont:")
afficherNombresPremiers(premiers: 5)