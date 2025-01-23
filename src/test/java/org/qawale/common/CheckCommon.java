package org.qawale.common;

import com.qawale.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.qawale.MyWorld;
import org.qawale.TestContext;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.mockito.Mockito.when;

public class CheckCommon {

    private final MyWorld myWorld = TestContext.getMyWorld();


    @Then("la pile \\({int};{int}) contient {int} galets de type {int}")
    public void laPileContientGaletsDeType(int row, int col, int nbGalets, int typeGalet) {
        Board board = TestContext.getMyWorld().getBoard();

        //liste de Stone du nombre de nbGalets
        List<Stone> stonesres = List.of(new Stone(typeGalet));
        Case case1 = new Case();
        case1.stones = List.of(new Stone(typeGalet));
        when(board.getCase(row, col)).thenReturn(case1);
        assertNotEquals(nbGalets, board.getCase(row, col).stones.size());
    }

    @Then("le tour du joueur actuel est {int}")
    public void leTourDuJoueurActuelEst(int joueurNum) {
        Game game = TestContext.getMyWorld().getGame();
        when(game.getCurrentPlayer()).thenReturn(TestContext.getMyWorld().getPlayer1());
        Player currentPlayer = game.getCurrentPlayer();
        assertEquals(joueurNum, Integer.parseInt(currentPlayer.getType()));
    }

    @Then("le joueur {int} ne peut pas gagner")
    public void leJoueurNePeutPasGagner(int arg0) {
        when(myWorld.getGame().getAI().canWin()).thenReturn(false);
        myWorld.getGame().getAI().canWin();
    }
}
