try{
    account acc = new account();
    insert acc;
   acc.name = 'try-catch Account';
} catch (DmlException dmlex){
    System.debug('DML went wrong buddy!');

} catch (Exception ex){
    System.debug('something went wrong buddy!');
} finally {
    System.debug('this will always run even if catches or not ');
}

System.debug('but DYWB, Dmlexception caught it!');