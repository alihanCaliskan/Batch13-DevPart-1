Account acc = [SELECT Name, Type, Industry, AnnualRevenue
               FROM Account
               WHERE AnnualRevenue != null AND Industry !=null AND Type != null
               LIMIT 1];

String jsonString = JSON.serialize(acc);
System.debug(jsonString);

List<Account> accList = [SELECT Name, Type, Industry, AnnualRevenue, VIP__c
                         FROM Account
                         WHERE AnnualRevenue != null AND Industry !=null AND Type != null AND VIP__c = True
                         ];

String jsonListString = JSON.serialize(accList);
System.debug(jsonListString);
