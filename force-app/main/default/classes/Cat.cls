public class Cat {
    public string name;
    public string color;
    //constructor name must be same as class name!
    //it doesn't return anything.
    //we use constructor if we want to execute some appex code as soon as new instance is created.
    public Cat() {
        system.debug('cat constructor called.');
        sleeping();
    }
    //we can have multible constructors
    //provide number
    public Cat (string n, string clr){
        name = n;
        color= clr;
        sleeping();
    }

    public void sleeping(){
        system.debug(name + ' is sleeping... dzzzzz.');
    }
}