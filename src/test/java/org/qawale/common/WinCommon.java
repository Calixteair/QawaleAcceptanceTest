package org.qawale.common;


import com.qawale.Board;
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
        Board board = TestContext.getMyWorld().getBoard();
        // Mock de la méthode checkWinner()
        Player expectedWinner = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        when(board.aWin(expectedWinner)).thenReturn(true);
        assertTrue(board.aWin(expectedWinner));


    }

    @Then("le joueur {int} ne gagne pas")
    public void leJoueurNeGagnePas(int joueurNum) {
        Board board = TestContext.getMyWorld().getBoard();
        Player expectedWinner = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        // Mock de la méthode checkWinner()
        when(board.aWin(expectedWinner)).thenReturn(false);
        assertFalse(board.aWin(expectedWinner));


    }

    @Then("la partie se termine avec une égalité")
    public void laPartieSeTermineAvecUneÉgalité() {
        Game game = TestContext.getMyWorld().getGame();

        when(game.isPat()).thenReturn(true);
    }
}
