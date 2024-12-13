# Created by kalinux at 04/12/2024
Feature: # Enter feature name here
  # Enter feature description here


  Scenario: Alignement de 4 galets en diagonale
    Given le joueur 1 est de type 1
    And le joueur 2 est de type 2
    And le plateau est le suivant
      | 3;1 |     |     |     |
      |     | 3;1 |     |     |
      |     |     | 3;1 |     |
      |     |  3  |     |     |
    When le joueur 1 joue en (3;1) avec un galet de type 1
    And le joueur 1 deplace le galet courant en (3;2)
    And le joueur 1 deplace le galet courant en (3;3)
    Then le plateau est le suivant
      | 3;1 |     |     |     |
      |     | 3;1 |     |     |
      |     |     | 3;1 |     |
      |     |     |  3   |  1 |
    And le joueur 1 gagne