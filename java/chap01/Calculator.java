package chap01;

public class Calculator {
    public static void main(String[] args) {
        int a;
        int b;

        a = 100;
        b = 22;

        int add = a + b;
        int sub = a - b;
        int mul = a * b;
        int div = a / b;
        float divf = a / b;


        System.out.println("\n\nAddition: " + add);
        System.out.println("Substraction: " + sub);
        System.out.println("Multiplication: " + mul);
        System.out.println("Division: " + div);
        System.out.println("Float Division: " + divf + "\n\n");

    }
}
