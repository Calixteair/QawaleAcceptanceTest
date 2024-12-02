package org.awale;

public class TestContext {

    private static final MyWorld myWorld = new MyWorld();

    public static MyWorld getMyWorld() {
        return myWorld;
    }
}
