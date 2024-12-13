# Created by kalinux at 04/12/2024
Feature: # Enter feature name here
  # Enter feature description here

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a plus de galet visible

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a moins de galet visible

  Scenario: Le joueur pose le dernier galet , il n'y a pas de ligne/colonne mais il a le meme nombre de galet visible


  Scenario: Partie nulle
    Given tous les galets sont placés
    And aucun joueur n'a aligné 4 galets visibles
    And le plateau est le suivant
      | 1;1 | 2;2 | 1;1 | 2;2 |
      | 2;2 | 2;2 | 2;2 | 1;1 |
      | 1;1 | 1;1 | 1;1 | 2;2 |
      | 2;2 | 1;1 | 2;2 | 1;1 |
    When aucun autre coup n'est possible
    Then la partie se termine avec une égalité