public class Car {
    //this is method body.
        //currently this class is in local machine.
        //we MUST deploy this class to ORG.

        //HOW to deploy the class to ORG?
            //right click and select sfdx: deploy.
        //Save.
        //Deploy.
        //!NOTHING will be printed when we deployed!
    public void switchOn(){
        system.debug('starting the car now.');
    }

    public void drive(){
        system.debug('driving ' + carName);
    }

    public void driveAtMaxSpeed(){
        String description = 'driving ' + carName + ' of color ' + carColor + ' at ' + maxSpeed + 'km/hr.';
        system.debug(description);
    }

    //CLASS VARIABLE
    // Public ==> means accessible outside of the class
    public String carColor = '';
    public String carName;
    // Private variable ==> means accessible ONLY inside of the class
    private Integer maxSpeed = 140;

}
