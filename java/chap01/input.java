package chap01;
import java.util.Scanner;

public class input {
    public static void main(String [] args){
        Scanner scr = new Scanner(System.in);
        
        System.out.println("Enter a number: ");
        int a = scr.nextInt();

        System.out.println("Enter another number: ");
        int b = scr.nextInt();

        int result = a + b;

        System.out.println("Result: " + result);
    }
    
}
