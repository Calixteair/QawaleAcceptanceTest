package org.qawale.common;

import com.qawale.Player;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.qawale.MyWorld;
import org.qawale.TestContext;

import static org.junit.jupiter.api.Assertions.assertTrue;

public class PlayCommon {

    private final MyWorld myWorld = TestContext.getMyWorld();


    @When("le joueur {int} joue en \\({int};{int}) avec un galet de type {int}")
    public void le_joueur_joue_en_avec_un_galet_de_type(int joueurNum, int row, int col, int type) {
        Player currentPlayer = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        boolean result = myWorld.getGame().playStone(row, col, currentPlayer, type);
        assertTrue(result, "La pose du galet a échoué");
    }

    @When("le joueur {int} deplace le galet courant en \\({int};{int})")
    public void le_joueur_deplace_le_galet_courant_en(int joueurNum, int row, int col) {
        Player currentPlayer = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        boolean result = myWorld.getGame().moveCurrentStone(row, col, currentPlayer);
        assertTrue(result, "Le déplacement du galet a échoué");
    }


}
