Feature: test si l'ia joue bien sur le fin de partie

  Scenario: Le joueur ia gagne avec une colonne : pose indirecte
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
        | 1;1 |     |     |     |
        | 1;1 |     |     |     |
        | 1;1 |     |     |     |
        |     |     |     | 2;3 |
    When l'ia joue le coup est [(3;3),(3;2),(3;1),(3;0)]
    And le joueur 1 joue en (3;3) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (3;2)
    And le joueur 1 deplace le galet courant en (3;1)
    And le joueur 1 deplace le galet courant en (3;0)
    Then le joueur 1 gagne

    Scenario: Le joueur ia empeche l'adversaire de gagner
      Given le joueur 1 est de type 2
      And le joueur 2 est de type 1
      And le plateau est le suivant
          | 1;1 |     |     |     |
          | 1;1 |     |     |     |
          | 1;1 |     |     |     |
          |     |     |     | 2;3 |
      When l'ia joue le coup est [(3;3),(3;2),(3;1),(3;0)]
        And le joueur 1 joue en (3;3) avec un galet de type 1
        And le joueur 1 deplace le galet courant en (3;2)
        And le joueur 1 deplace le galet courant en (3;1)
        And le joueur 1 deplace le galet courant en (3;0)
        Then le joueur 2 ne peut pas gagner