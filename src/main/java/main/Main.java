package main;

public class Main {
    public static void main(String[] args) {
        String s = "marcin";
        s.charAt(2);
        System.out.println(s.concat(" pastwa"));
        System.out.println(s.contains("o"));
        StringBuilder name = new StringBuilder("marcin");
        name.append("pastwa").append(" ").reverse();
        System.out.println(name);


    }
}
