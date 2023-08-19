package chap02;

public class BicycleDemo {
    public static void main(String[] args){
        Bicycle bike1 = new Bicycle();
        Bicycle bike2 = new Bicycle();

        bike1.changeCadence(1);
        bike1.speedUp(20);
        bike1.applyBreak(5);
        bike1.changeGear(3);
        bike1.printStates();

        System.out.println("\n");

        bike2.changeCadence(40);
        bike2.speedUp(15);
        bike2.applyBreak(2);
        bike2.changeGear(2);
        bike2.printStates();

        System.out.println("\n");

        bike2.speedUp(5);
        bike2.applyBreak(3);
        bike2.changeGear(4);
        bike2.printStates();

    }
    
}
