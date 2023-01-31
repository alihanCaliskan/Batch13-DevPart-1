public class StringDemoClass {
    public void stringMethod1(){
        String sessionDescription = 'learning string methods in apex language';
        system.debug(sessionDescription);

        //1. lenght
        integer lengthOfStr = sessionDescription.length();
        system.debug('length of session description string: ' + lengthOfStr);
        
        //2. convert the string to Caps
        String capitalStr = sessionDescription.toUpperCase();
        system.debug('lession description in CAPITAL ' + capitalStr);

        //3. check if our string has 'apex' !it is CASE SENSETIVE!
        Boolean containsApex = sessionDescription.contains('APEX');
        system.debug('contains apex (CASE SENSETIVE)? '+ containsApex); 

        containsApex = sessionDescription.containsIgnoreCase('APEX');
        system.debug('contains apex (CASE INSENSETIVE)? '+ containsApex);

        Boolean containsSalesforce = sessionDescription.containsIgnoreCase('salesforce');
        system.debug('contains salesforce (CASE INSENSETIVE)? '+ containsSalesforce); 

    /*
        string username = '   alihan    ';
        system.debug('username lenght is ' + username.lenght(););
        string username = username.trim();;
        system.debug('username lenght with .trim is ' + username.lenght(););
    */
    } 

}