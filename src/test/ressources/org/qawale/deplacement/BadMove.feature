# Created by kalinux at 04/12/2024
Feature: # Enter feature name here
  # Enter feature description here



  Scenario: Placement gallet sur une case vide
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (1;0) avec un galet de type 1
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |



  Scenario: Placement gallet non adjacent
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And  place la pile sur la case [(0;1),(1;0)]
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      |     |  3  |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |




  Scenario: Placement gallet en dehors de la grille
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;5) avec un galet de type 1
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |



  Scenario: Placement gallet emplacement initial
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And  place la pile sur la case [(0;0)]
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      |     |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |


  Scenario: Placement gallet emplacement initial en revenant en arriere
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And  place la pile sur la case [(0;1),(0;0)]
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      |     |  3  |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |


  Scenario: Placement pile de gallet  en diagonal
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And  place la pile sur la case [(1;1)]
    Then le tour du joueur actuel est 1
    And le plateau est le suivant
      |     |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |