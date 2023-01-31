public class Assignment7NewCar {
    public Integer currentSpeed = 0;
    String carType;
    String carName;

    public void startCar(string carName, String carType){
        system.debug(carName + ' ' + carType + ' is starting!');
    }

    public void accelerate (integer x){
        currentSpeed += x;
        system.debug(x + ' MPH is accelerated, ' + 'current speed is ' + currentSpeed);
    }

    public void brake (integer y){
        if (currentSpeed >= y) {
            currentSpeed -= y; 
            system.debug(y + ' MPH is braked, ' + 'current speed is ' + currentSpeed);
        } else {
            system.debug('Value is not valid! Speed of brake cannot be less than current speed!');
        }
    }
    
    public void stop (){
        currentSpeed = currentSpeed - currentSpeed;
        system.debug('Car is stopped, current speed is ' + currentSpeed);
    }

    public void checkSpeed(){
        if (currentSpeed >= 0 && currentSpeed <= 30) {
            system.debug('Car is on City Mode!');
        } else if (currentSpeed > 30 && currentSpeed <= 60) {
            system.debug('Car is on Economy Mode!');
        } else if (currentSpeed > 60) {
            system.debug('Car is on Sports Mode!');
        } else {
            system.debug('Invalid Speed! Speed cannot be less than 0!');
        }
    }

}