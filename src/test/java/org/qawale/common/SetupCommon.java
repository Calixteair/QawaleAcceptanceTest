package org.qawale.common;


import com.qawale.Board;
import com.qawale.Game;
import com.qawale.Player;
import com.qawale.Stone;
import io.cucumber.datatable.DataTable;
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
    public void le_plateau_est_le_suivant(DataTable dataTable) {
        Board mockBoard = myWorld.getBoard();
        Player currentPlayer = myWorld.getPlayer1();
        Player otherPlayer = myWorld.getPlayer2();

        // On initialise le plateau avec les données de la table
        dataTable.asLists().forEach(row -> {
            if (row.isEmpty()) {
                return;
            }
            for (int i = 0; i < row.size(); i++) {
                String cellValue = row.get(i);
                if (cellValue == null || cellValue.isEmpty()) {
                    continue;
                }
                String[] stones = cellValue.split(";");
                for (String stone : stones) {
                    if (stone.isEmpty()) {
                        continue;
                    }
                    if (stone.equals("1")) {
                        mockBoard.placeStone(i, row.indexOf(cellValue), new Stone(1), currentPlayer);
                    } else if (stone.equals("2")) {
                        mockBoard.placeStone(i, row.indexOf(cellValue), new Stone(2), otherPlayer);
                    } else {
                        mockBoard.placeStone(i, row.indexOf(cellValue), new Stone(0), null);
                    }
                }
            }
        });
    }


}
