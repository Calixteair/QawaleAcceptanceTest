# Created by kalinux at 04/12/2024
Feature: il n'y a plus de galet a jouer
  # Enter feature description here

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a plus de galet visible

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a moins de galet visible

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a le meme nombre de galet visible


  Scenario: Partie nulle
    Given le plateau est le suivant
      | 1;1 | 2;2 | 1;1 | 2;2 |
      | 2;2 | 2;2 | 2;2 | 1;1 |
      | 1;1 | 1;1 | 1;1 | 2;2 |
      | 2;2 | 1;1 | 2;2 | 1;1 |
    When aucun autre coup n'est possible
    Then la partie se termine avec une égalité