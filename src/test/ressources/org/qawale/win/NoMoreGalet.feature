# Created by kalinux at 04/12/2024
Feature: il n'y a plus de galet a jouer
  # Enter feature description here

  Scenario: Partie nulle
    Given le plateau est le suivant
      | 1;1 | 2;2 | 1;1 | 2;2 |
      | 2;2 | 2;2 | 2;2 | 1;1 |
      | 1;1 | 1;1 | 1;1 | 2;2 |
      | 2;2 | 1;1 | 2;2 | 1;1 |
    When aucun autre coup n'est possible
    Then la partie se termine avec une égalité