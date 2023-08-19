package chap02;

// Method Overloading
public class Calculator {
    int performAddition(int a, int b){
        int result = a + b;
        return result;
    }

    int performAddition(int a, int b, int c){
        int result = a + b + c;
        return result;
    }
}
