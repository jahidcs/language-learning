package chap02;

public class Bicycle {
    int cadence = 0;
    int speed = 0;
    int gear = 1;

    void changeCadence(int newValue){
        cadence = newValue;
    }

    void changeGear(int newValue){
        gear = newValue;
    }

    void speedUp(int increment){
        speed = speed + increment;
    }

    void applyBreak(int decrement){
        speed = speed - decrement;
    }

    void printStates(){
        System.out.println("Cadence: " + cadence);
        System.out.println("Speed: " + speed);
        System.out.println("Gear: " + gear);
    }   
}