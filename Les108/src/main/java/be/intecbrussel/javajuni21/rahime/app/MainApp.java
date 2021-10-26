package be.intecbrussel.javajuni21.rahime.app;

public class MainApp {

    public static void main(String[] args) {

        Calculator calculator = new Calculator();

        Double expected = 10.0 + 20;
        Double actual = calculator.add(10.0, 20);

        System.out.println("Result is : " + actual);
        System.out.println("Are expected and actual the same " + (expected.compareTo(actual)));
        System.out.println("Are expected and actual the same " + (expected.equals(actual)));


         expected = 10.0 * 20;
         actual = calculator.mul(10.0, 20);

        System.out.println("Result is : " + actual);
        System.out.println("Are expected and actual the same " + (expected.compareTo(actual)));
        System.out.println("Are expected and actual the same " + (expected.equals(actual)));


    }
}
