public class ListDemo {
    public static String candidatesList(integer i){
        //LIST
            //datatype
        List<String> listCandidates = new List<string>();
        //we can add ONLY string to thr above list.
            //note: we CANNOT add integer, boolean, date or any other datatype.
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill'); 
        listCandidates.add('Marc');
        System.debug('Candidates are ' + listCandidates);

        string candidate;
        if (i < listCandidates.size() && i >= 0) {
            candidate = listCandidates[i];
        } else {
            candidate = 'No such candidate found!';
        }
        return candidate;
    }

    public static void randomIntegerList (){
        List<integer> listInteger = new List<integer>();
        listInteger.add(15);
        listInteger.add(12);
        listInteger.add(98);
        listInteger.add(15);
        listInteger.add(15);

        System.debug('List of random integers is ' + listInteger);

        //get the value at index3
        integer index3value = listInteger.get(3);
        //OR below is fully same
        Integer index3value2 = listInteger[3];
        
    }

    //?System.debug('index 3 value is ' + indexValue3);

    
    public static void allCats(){


        List<cat> cats = new List<cat>();
        // how to add elements of cat class
            // we can add instancecs of cat class in list<cat>
        Cat sfcat = new Cat();
        Cat sfcat2 = new Cat();
        Cat c1 = new Cat('bulut', 'grey');
        Cat c2 = new Cat('minnos', 'pink');

        cats.add(sfcat);
        cats.add(sfcat2);
        cats.add(c1);
        cats.add(c2);
        System.debug('all cats; ' + cats);
        //check if list is not empty
        if (!cats.isEmpty()) {
            System.debug(cats[0]);
        }

    }

    public static void iterateListInteger(){
        List<integer> listInteger = new List<integer>();
        listInteger.add(15);
        listInteger.add(22);
        listInteger.add(98);
        listInteger.add(15);
        listInteger.add(15);
        System.debug('List of random integers is ' + listInteger);

        //for (datatype  name    : name of the List)
        for (integer eachInteger : listInteger){
            system.debug(eachInteger);
        }
    }

    public static integer add (list<integer> listInt){
        //a tembproray variable to store sum of each integer in the list
        //
        integer sum = 0;

        for (integer eachInt : listInt){
            sum += eachInt;
    }
    return sum;
    }


}