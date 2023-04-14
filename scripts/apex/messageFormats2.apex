List<Opportunity> opp = [SELECT Name, Type, StageName, Amount 
                   FROM Opportunity
                   WHERE Type != null
                   AND StageName != null 
                   AND Amount != null 
                   LIMIT 2];

String jsonString = JSON.serialize(opp);
//System.debug(jsonString);

List<Opportunity> oppList = [SELECT Name, Type, StageName, Amount 
                   FROM Opportunity
                   WHERE Amount != null
                   ORDER BY Amount DESC
                   LIMIT 10];

String jsonSerialize = JSON.serialize(oppList);
System.debug(jsonSerialize);