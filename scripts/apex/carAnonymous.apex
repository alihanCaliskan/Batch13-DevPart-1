//class name     object name    new instance of the class
car              togg           = new car();
togg.switchOn();

car tesla = new car();
tesla.carColor = 'black';
tesla.switchOn();
system.debug('tesla --> ' + tesla);

car volvo=new car();
volvo.carColor = 'black';
volvo.carName = 'XC90';
volvo.switchOn();
volvo.drive();
volvo.driveAtMaxSpeed();
