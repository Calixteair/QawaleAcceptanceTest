package org.qawale.common;

import com.qawale.Game;
import io.cucumber.java.en.Then;
import org.qawale.MyWorld;
import org.qawale.TestContext;

public class CheckCommon {

    private final MyWorld myWorld = TestContext.getMyWorld();


    @Then("la pile \\({int};{int}) contient {int} galets de type {int}")
    public void laPileContientGaletsDeType(int row, int col, int nbGalets, int typeGalet) {
    }
}
