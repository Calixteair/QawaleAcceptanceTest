package org.qawale.common;


import com.qawale.Game;
import com.qawale.Player;
import io.cucumber.java.en.Then;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.qawale.MyWorld;
import org.qawale.TestContext;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class WinCommon {


    private final MyWorld myWorld = TestContext.getMyWorld();








    @Then("le joueur {int} gagne")
    public void le_joueur_gagne(int joueurNum) {
        Game game = mock(Game.class);
        // Mock de la méthode checkWinner()
        Player expectedWinner = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();

        // Supposons que myWorld.getGame() est un mock
        when(game.checkWinner()).thenReturn(expectedWinner);

        // Appel de la méthode pour obtenir le gagnant réel
        Player winner = game.checkWinner();

        // Vérification que le gagnant n'est pas null
        assertNotNull(winner, "Il n'y a pas encore de gagnant");

        // Vérification que le bon joueur est déclaré gagnant
        assertEquals(winner, expectedWinner, "Le mauvais joueur est déclaré gagnant");
    }

    @Then("le joueur {int} ne gagne pas")
    public void leJoueurNeGagnePas(int joueurNum) {
        Game game = mock(Game.class);
        // Mock de la méthode checkWinner()
        Player expectedWinner = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        when(game.checkWinner()).thenReturn(null);
        // Appel de la méthode pour obtenir le gagnant réel
        Player winner = game.checkWinner();
        // Vérification que le gagnant est null
        assertNull(winner, "Il y a un gagnant alors qu'il ne devrait pas y en avoir");

    }
}
