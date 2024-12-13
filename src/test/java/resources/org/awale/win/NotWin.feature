Feature: le joueur ne gagne pas
  # Enter feature description here

  Scenario: le joueur 1 empile 4 galets sur une case
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        | 1;1 | 1;1 | 1;1;1 |     |
        |     |     |     |     |
        |     |     |     |     |
        |     |     |     |     |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And le joueur 1 déplace le galet courant en (1;0)
    And le joueur 1 déplace le galet courant en (2;0)
    And le joueur 1 déplace le galet courant en (3;0)
    Then la pile (0;0) contient 4 galets de type 1
    And le joueur 1 ne gagne pas

  Scenario: Le joueur gagne puis cancel sa victoire
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        |     |     |     |     |
        | 1;1 | 1;1 | 1;1 |     |
        |     |     |     | 2;1 |
        |     |     |     | 2;1 |
    When le joueur 1 joue en (3;2) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (3;1)
    And le joueur 1 deplace le galet courant en (2;1)
    And le joueur 1 deplace le galet courant en (2;0)
    Then le joueur 1 ne gagne pas

