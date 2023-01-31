public class Dog {
    string name;
    string color;
    integer age;
    static integer count = 0;

    public Dog(){
        count++;
        age = 1;
        checkAge();
        showDogCount();
        
    }

    public Dog (string name, string color, integer age){
        count++;
        checkAge();
        showDogCount();
    }

    public void checkAge(){
        if (age >= 0 && age <= 1) {
            system.debug('Puppy Dog');
        } else if (age > 1 && age <= 3) {
            system.debug('Young Dog');
        } else if (age > 3 && age <= 5) {
            system.debug('Adult Dog');
        } else if (age > 5) {
            system.debug('Old Dog');
        } else {
            system.debug('Invalid Input! Age cannot be smaller than 0');
        }
    }
    public void showDogCount(){
        System.debug('Number of dog is; ' + count);
    }



	//private void checkAge(){
	//} 
}