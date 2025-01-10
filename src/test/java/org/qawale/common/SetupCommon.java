package org.qawale.common;


import com.qawale.Board;
import com.qawale.Game;
import com.qawale.Player;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import org.qawale.MyWorld;
import org.qawale.TestContext;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;


public class SetupCommon {

    private final MyWorld myWorld = TestContext.getMyWorld();



    @Given("le joueur {int} est de type {int}")
    public void le_joueur_est_de_type(int joueurNum, int type) {
        Player currentPlayer = (joueurNum == 1) ? myWorld.getPlayer1() : myWorld.getPlayer2();
        currentPlayer = new Player(currentPlayer.getName(), String.valueOf(type)); // On modifie le type du joueur
    }

    @Given("le plateau est le suivant")
    public void le_plateau_est_le_suivant(io.cucumber.datatable.DataTable dataTable) {
        Board mockBoard = mock(Board.class);
        when(mockBoard.placeStone(anyInt(), anyInt(), any(), any())).thenReturn(true);
        when(mockBoard.moveCurrentStone(anyInt(), anyInt(), any())).thenReturn(true);
        when(mockBoard.checkWinningCondition()).thenReturn(myWorld.getPlayer1());  // Simule un gagnant
    }


}
