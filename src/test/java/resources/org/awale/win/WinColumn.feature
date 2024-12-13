# Created by kalinux at 04/12/2024
Feature: Le joueur gagne en colonne

  Scenario: Le joueur gagne avec une colonne : pose indirecte
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        | 1;1 |     |     |     |
        | 1;1 |     |     |     |
        | 1;1 |     |     |     |
        |     |     |     | 2;3 |
    When le joueur 1 joue en (3;3) avec un galet de type 1
    And le joueur 1 déplace le galet courant en (3;2)
    And le joueur 1 déplace le galet courant en (3;1)
    And le joueur 1 déplace le galet courant en (3;0)
    Then le joueur 1 gagne

  Scenario: Le joueur gagne avec une colonne : pose indirecte pendant le déplacement
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        |     | 1;1 |     |     |
        |     | 1;1 |     |     |
        |     | 1;1 |     |     |
        |     |     |  1  |     |
    When le joueur 1 joue en (3;2) avec un galet de type 1
    And le joueur 1 déplace le galet courant en (3;1)
    And le joueur 1 déplace le galet courant en (3;0)
    Then le joueur 1 gagne


  Scenario: Le joueur fait gagner l'adversaire avec une colonne
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        |     |     |     |  2  |
        |     |     | 3;2 |     |
        |     |     | 3;2 |     |
        |     |     |  2  |     |
    When le joueur 1 joue en (0;3) avec un galet de type 1
    And le joueur 1 déplace le galet courant en (0;2)
    And le joueur 1 déplace le galet courant en (0;1)
    Then le joueur 2 gagne