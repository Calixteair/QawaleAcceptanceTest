Feature: Déplacement de galets bon
  Scenario: Placement initial valide
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;3 |     |     | 3;3 |
      |     |     |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
    When le joueur 1 joue en (0;0) avec un galet de type 1
    And  place la pile sur la case [(0;1),(1;1),(1;0)]
    And le plateau est le suivant
      |     | 3   |     | 3;3 |
      | 1   | 3   |     |     |
      |     |     |     |     |
      | 3;3 |     |     | 3;3 |
