public with sharing class CheckDataTypes {
    public void methodBoolean () {
        Boolean checkBoolean = true;
        system.debug('Value of boolean is ' + checkBoolean + '.');
    }

    public void methodInteger () {
        Integer varFirst = 1;
        Integer varSecond = 2;
        system.debug('First value is ' + varFirst + ' and second value is ' + varSecond + '.');
    }

    public void stringMethod () {
        String varName = 'Name';
        String var2Name = 'Alihan';
        system.debug('My ' + varName + ' is ' + var2Name + '.');
    }


}