# QawaleAcceptanceTest
Test d'acceptation pour le jeu Qawale



plateau de 4x4
Galet joueur 1 : 1
Galet joueur 2 : 2
Galet Neutre : 3

mvn install:install-file -Dfile=path/to/qawale-1.0-SNAPSHOT.jar -DgroupId=com.qawale -DartifactId=qawale -Dversion=1.0-SNAPSHOT -Dpackaging=jar


On se base sur les regles du jeu trouver sur : https://export.gigamic.com/wp-content/uploads/2022/08/GIGAMIC_GCQW_QAWALE_RULES-MLV_08-2022_BD.pdf

### **Règles du jeu**

#### **CONTENU**
- 1 plateau de jeu  
- 8 galets clairs  1
- 8 galets foncés  2
- 8 galets orangés  3
- La règle du jeu

---

#### **BUT DU JEU**
Réaliser un alignement de **4 galets visibles** de sa couleur en **ligne**, en **colonne**, ou en **diagonale**.

---

#### **MISE EN PLACE**
- Placez le plateau au centre de la table.
- Disposez **2 galets orangés empilés** à chaque coin du plateau.  
- Chaque joueur choisit une couleur (clair ou foncé) et prend les **8 galets correspondants**.  

*Référez-vous à la Figure 1 pour la mise en place initiale.*

---

#### **DÉROULEMENT DE LA PARTIE**
1. **Déterminer le premier joueur** :  
   Le premier joueur est choisi au hasard.

2. **Tour de jeu :**  
   - Le joueur actif place **un galet de sa couleur** sur une pile de galets déjà présente sur le plateau.  
     *Il est interdit de poser un galet sur une case vide.*  
     (*Voir Figure 2 pour un exemple.*)
   - Une fois le galet placé, **l’ensemble de la pile** (y compris le galet fraîchement posé) doit être égrainé.  
     - Commencez à déplacer les galets **depuis une case voisine**.  
     - Les galets doivent être déposés **un par un** sur des cases adjacentes.  
       (*Les diagonales sont interdites.*)

3. **Règles de déplacement :**  
   - **Pas d’aller-retour immédiat** : il est interdit de revenir sur une case qui vient d’être visitée.
   - Les boucles sont permises : un joueur peut repasser sur une case après un détour.

---

#### **FIN DE LA PARTIE**
- La partie se termine lorsque :
  1. Un joueur aligne **4 galets visibles** de sa couleur en **ligne, colonne ou diagonale**.  
     Il est déclaré vainqueur.
  2. Tous les galets des deux joueurs sont posés sans qu’aucun alignement ne soit réalisé :  
     La partie se termine par une égalité.

**Notes importantes :**  
- Un galet est **visible** lorsqu’il est :
  - Seul sur une case  
  - Au sommet d’une pile  
- Un empilement vertical de **4 galets de la même couleur** ne compte pas comme un alignement.

---

#### **Résumé rapide des interdictions :**
- Poser un galet sur une case vide.  
- Aller-retour immédiat lors de l’égrainage.  
- Déplacement en diagonale.  
- Empiler 4 galets verticaux pour gagner.
