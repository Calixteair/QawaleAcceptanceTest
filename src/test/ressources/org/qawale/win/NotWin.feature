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
    And le joueur 1 deplace le galet courant en (0;1)
    And le joueur 1 deplace le galet courant en (0;2)
    And le joueur 1 deplace le galet courant en (0;3)
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
    When le joueur 1 joue en (2;3) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (1;3)
    And le joueur 1 deplace le galet courant en (1;2)
    And le joueur 1 deplace le galet courant en (0;2)
    Then le joueur 1 ne gagne pas

