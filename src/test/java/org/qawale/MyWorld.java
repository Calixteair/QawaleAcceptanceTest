package org.qawale;

import com.qawale.Board;
import com.qawale.Game;
import com.qawale.Player;

public class MyWorld {
    private Game game;
    private Board board;
    private Player player1;
    private Player player2;

    public MyWorld() {
        // Initialisation de l'état du jeu
        player1 = new Player("Joueur 1", "1");
        player2 = new Player("Joueur 2", "1");
        board = new Board(4, 4);  // Plateau 4x4
        game = new Game(board, player1, player2);
    }

    public Game getGame() {
        return game;
    }

    public Player getPlayer1() {
        return player1;
    }

    public Player getPlayer2() {
        return player2;
    }

    public Board getBoard() {
        return board;
    }
}
