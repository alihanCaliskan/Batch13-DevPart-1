SetDemo.citySet();
SetDemo.randomInteger();

list<integer> l1 = new list<integer>();
l1.add(Integer.valueof((Math.random() * 100)));
l1.add(Integer.valueof((Math.random() * 100)));
l1.add(Integer.valueof((Math.random() * 100)));
l1.add(Integer.valueof((Math.random() * 100)));
l1.add(Integer.valueof((Math.random() * 100)));
set<integer> setInt = SetDemo.setFromList(l1);///Burada ne yapildi calis/
system.debug('l1 list ' + l1);
system.debug('set from list ' + setInt);

set<string> cities = new set<string>(); 
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('BERLIN');
    set<string> capCities = SetDemo.upperCaseSet(cities);
    system.debug('cities in capital ' + capCities);