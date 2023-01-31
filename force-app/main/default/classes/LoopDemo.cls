public class LoopDemo {
    public void printIntWhile(){
        integer count = 1;
        while (count <= 25) {
            system.debug(count);
            count ++;
        }
    }

    public void printNnumbers(integer n){
        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }
    }

    public void printNOddNumbers(integer startInt, Integer endInt){
        for (Integer i = startInt; i < endInt; i++) {
            integer remainderI = math.mod(i, 2);
            if (remainderI == 1){
                system.debug(i);
            }
        }
    }
}