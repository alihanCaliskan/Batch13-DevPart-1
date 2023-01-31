public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        string batchName = 'Batch 13';
        integer totalCandidates = 50;
        Boolean isAdminCompleted = true;

        string batchDescription = batchName + ' are the best, yess?';
        system.debug(batchDescription);
        system.debug('total candidates ' + totalCandidates);
    
        Decimal dec = 34.39;
        system.debug('decimal value => ' + dec);
        
        Long lng = 1456458415L;
        system.debug('long value => ' + lng);

        Object obj1 = 'this is string';
        Object obj2 = 45;
        Object obj3 = true;
        system.debug('obj1 value => ' + obj1);
    }
    
}