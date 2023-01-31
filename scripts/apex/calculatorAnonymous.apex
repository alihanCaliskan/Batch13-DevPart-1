//Day 2
Calculator c = new Calculator();

string parameter1 = 'printing this for Batch13';
string msg = c.printAndReturnMessage(parameter1);
system.debug('return message: ' + msg);

Integer sum1 = c.add(17, 47);
system.debug('sum1 is '+ sum1);

Integer sum2 = c.add(17, 47, 456);
system.debug('sum2 is '+ sum2);

date ddt = date.today();
boolean lpy = c.leapYearCheck(ddt);
system.debug('today date is leap year? ' + lpy);

string yes = c.printAndReturnMessage(parameter1);
system.debug('return message: ' + yes);



/*
// Day1
Calculator c = new Calculator();
string m = 'print this now.';
c.printNewMessage(m); 
string msg = 'print this now again.';
c.printNewMessage(msg); 
c.printNewMessage('88');

c.welcomeMessage();
*/
