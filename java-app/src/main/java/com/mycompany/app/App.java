package com.mycompany.app;

/**
 * Szalony krzywy msciciel!
 */
public class App
{

    private final String message = "Szalony krzywy msciciel!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
