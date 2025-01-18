# Created by kalinux at 02/12/2024
Feature: Le joueur choisi une case impossible donc c'est a nouveau a lui
  # Enter feature description here

  Scenario: Le joueur choisi une case vide
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        | 3;3 |     |     | 3;3 |
        |     |     |     |     |
        |     |     |     |     |
        | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (2;2) avec un galet de type 1
    Then le tour du joueur actuel est 1

  Scenario: Le joueur choisi une case en dehors
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        | 3;3 |     |     | 3;3 |
        |     |     |     |     |
        |     |     |     |     |
        | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (4;4) avec un galet de type 1
    Then le tour du joueur actuel est 1