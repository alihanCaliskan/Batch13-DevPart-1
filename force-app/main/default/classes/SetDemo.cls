public class SetDemo {
   public static void citySet(){
    set<string> cities = new set<string>(); 
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('Lisbon');
    cities.add('Berlin');
    cities.add('Tokyo');
    cities.add('Nairobi');
    cities.add('BERLIN');

    system.debug('set of cities ' + cities);
   }

   public static void randomInteger(){
    Set<Integer> integerSet = new Set<Integer>();
    integerSet.add(Integer.valueof((Math.random() * 100)));
    integerSet.add(Integer.valueof((Math.random() * 100)));
    integerSet.add(Integer.valueof((Math.random() * 100)));
    integerSet.add(Integer.valueof((Math.random() * 100)));
    integerSet.add(Integer.valueof((Math.random() * 100)));

    system.debug('set of random integers ' + integerSet);
   }

   //create a method.Which accepts a list<integer> and it retuns set<integer>
   //If our list has dublicate elements it will be removed.

   public static Set<Integer> setFromList(list<integer> listInt){
    //create new empty set.
    Set<Integer> returnSet = new set<integer>();
    //add All the elements of a list using .addAll(list_or_set) method.
    returnSet.addAll(listInt);
    // return the newly created set.
    return returnSet;
   }

   public static set<string> upperCaseSet(set<string> setStr){
    Set<String> upprSet = new Set<String>();

    system.debug('setStr => ' + setStr);

    for (string eachStr : setStr){
        system.debug('each str is ' + eachStr);
        string tempStr = eachStr.toUpperCase();
        upprSet.add(tempStr);
    }

    return upprSet;
   }
}