package org.qawale;

import com.qawale.AI;
import com.qawale.Board;
import com.qawale.Game;
import com.qawale.Player;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

public class MyWorld {
    private Game game;
    private Board board;
    private Player player1;
    private Player player2;
    private AI ailogique;

    public MyWorld() {
        // Initialisation de l'état du jeu mock
        player1 = new Player("Joueur 1", "1");
        player2 = new Player("Joueur 2", "1");
        board = mock(Board.class);
        game = mock(Game.class);
        ailogique = mock(AI.class);

        when(game.getAI()).thenReturn(ailogique);


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

    public AI getAI(){
        return ailogique;
    }
}
