public class Calculator {
    //parameterless method.
    public void welcomeMessage(){
         system.debug('welcome to apex calc, updated');
    }
    
    //parameterized method.
    public void printNewMessage(string msg){
         system.debug(msg);
    }

    public string printAndReturnMessage(string m){
        string returnStr = '';
        returnStr = m + '...Ok cool';
        return returnStr;
    } 

    public Integer add(Integer a, Integer b){
        Integer sum = a + b;
        return sum;
    }

    public Integer add(Integer x, Integer y, Integer z){
        Integer sum = x + y + z;
        return sum;
    }

    public Boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }

   public void welcomeMessage2(){
        system.debug('welcome to apex calc');
        printNewMessage('welcome welcome');
   }

   public void printNewMessage2(string msg){
        system.debug(msg);
   }

   void privatePrintMessage(string msg){
     system.debug('inside private method NOOWW');
     system.debug(msg);
     system.debug('done with private');
   }

 }