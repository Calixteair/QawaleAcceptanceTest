# Created by kalinux at 02/12/2024
Feature: Le joueur gagne
  # Enter feature description here

    Scenario: Le joueur gagne avec une ligne : pose indirect
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        | 1;1 | 1;1 | 1;1 |     |
        |     |     |     |     |
        |     |     |     |     |
        |     |     |     | 2;3 |
    When le joueur 1 joue en (3;3) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (2;3)
    And le joueur 1 deplace le galet courant en (1;3)
    And le joueur 1 deplace le galet courant en (0;3)
    Then le joueur 1 gagne

    Scenario: Le joueur gagne avec une ligne : pose indirect pendant le deplacement
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        |     |     |     |     |
        | 1;1 | 1;1 | 1;1 |     |
        |     |     |     |     |
        |     |     |     | 2;1 |
    When le joueur 1 joue en (3;3) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (2;3)
    And le joueur 1 deplace le galet courant en (1;3)
    And le joueur 1 deplace le galet courant en (0;3)
    Then le joueur 1 gagne


    Scenario: Le joueur fait gagner l'adversaire avec une ligne
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 1
    And le plateau est le suivant
        |     |     |     |     |
        | 3;2 | 1;2 | 3;2 |     |
        |     |     |     |  2  |
        |     |     |     |     |
    When le joueur 1 joue en (2;3) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (1;3)
    And le joueur 1 deplace le galet courant en (0;3)
    Then le joueur 2 gagne


