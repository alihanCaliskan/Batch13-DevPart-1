Map<string, country_code__c> mapCountryCode = country_code__c.getAll();
system.debug(mapCountryCode);

for (string eachName : mapCountryCode.keySet()){
    country_code__c c = mapCountryCode.get(eachName);
    system.debug('Country name is ' + eachName + ' its code is ' + c.code__c);
}

country_code__cc1 = country_code__c.getInstance('India');
system.debug('c1 code is ' + c1.code__c);

//old option!
List<country_code__c> allCC = [SELECT Id, Name. code__c FROM country_code__c];