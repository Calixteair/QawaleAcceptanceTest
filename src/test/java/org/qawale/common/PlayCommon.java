package org.qawale.common;

import com.qawale.Player;
import com.qawale.Stone;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.qawale.MyWorld;
import org.qawale.TestContext;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;

public class PlayCommon {

    private final MyWorld myWorld = TestContext.getMyWorld();


    @When("le joueur {int} joue en \\({int};{int}) avec un galet de type {int}")
    public void le_joueur_joue_en_avec_un_galet_de_type(int joueurNum, int row, int col, int type) {
        Player currentPlayer = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        when(myWorld.getGame().playStone(row, col, currentPlayer, type)).thenReturn(true);
        boolean result = myWorld.getGame().playStone(row, col, currentPlayer, type);
        assertTrue(result);
    }

    @When("le joueur {int} deplace le galet courant en \\({int};{int})")
    public void le_joueur_deplace_le_galet_courant_en(int joueurNum, int row, int col) {
        Player currentPlayer = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        when(myWorld.getGame().moveCurrentStone(row, col, currentPlayer)).thenReturn(true);
        boolean result = myWorld.getGame().moveCurrentStone(row, col, currentPlayer);
        assertTrue(result);
    }


    @When("aucun autre coup n'est possible")
    public void aucunAutreCoupNEstPossible() {
        when(myWorld.getBoard().isFull()).thenReturn(true);
        myWorld.getBoard().isFull();
    }

    @And("place la pile sur la case [\\({int};{int}),\\({int};{int})]")
    public void placeLaPileSurLaCase(int row1, int col1, int row2, int col2) {
        when(myWorld.getGame().playStone(row1, col1, myWorld.getPlayer1(), 1)).thenReturn(true);
        when(myWorld.getGame().playStone(row2, col2, myWorld.getPlayer1(), 1)).thenReturn(false);
        myWorld.getGame().playStone(row1, col1, myWorld.getPlayer1(), 1);
        myWorld.getGame().playStone(row2, col2, myWorld.getPlayer1(), 1);


    }

    @And("place la pile sur la case [\\({int};{int}),\\({int};{int}),\\({int};{int})]")
    public void placeLaPileSurLaCase(int row1, int col1, int row2, int col2, int row3, int col3) {
        when(myWorld.getGame().playStone(row1, col1, myWorld.getPlayer1(), 1)).thenReturn(true);
        when(myWorld.getGame().playStone(row2, col2, myWorld.getPlayer1(), 1)).thenReturn(true);
        when(myWorld.getGame().playStone(row3, col3, myWorld.getPlayer1(), 1)).thenReturn(true);
        myWorld.getGame().playStone(row1, col1, myWorld.getPlayer1(), 1);
        myWorld.getGame().playStone(row2, col2, myWorld.getPlayer1(), 1);
        myWorld.getGame().playStone(row3, col3, myWorld.getPlayer1(), 1);
    }
}
