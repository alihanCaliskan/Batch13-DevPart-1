//map is keyword to create a map
//1st datatype os of KEY -> country 
map<string, string> mapCntCurrency = new map <string, string>();
mapCntCurrency.put('USA', 'Dolar');
mapCntCurrency.put('FRANCE', 'EURO'); // it will not overwrite teh value because it is case sensetive
mapCntCurrency.put('France ', 'Euro');// it will not overwrite teh value because it is case sensetive
mapCntCurrency.put('Germany', 'Euro');
mapCntCurrency.put('India', 'Rupees');//it will overwrite if 2 are same key
mapCntCurrency.put('India', 'Rupee');//it will overwrite if 2 are same key
mapCntCurrency.put('Turkiye', 'Lira');
mapCntCurrency.put('El salvador', 'Bitcoin');
mapCntCurrency.put('USA', 'Dolar');
system.debug(mapCntCurrency);

//get value (currency for India and FRANCE)
string IndiaCurrency = mapCntCurrency.get('India');
system.debug('India currency is ' + IndiaCurrency);

string franceCurrency = mapCntCurrency.get('FRANCE');
system.debug('India currency is ' + IndiaCurrency);

string IndiaCurrency2 = mapCntCurrency.get('india');
system.debug('india currency is ' + IndiaCurrency2);

set<string> countries = mapCntCurrency.keySet();
system.debug('all countries in the map are ' + countries);

list<string> currencies = mapCntCurrency.values();
system.debug('all currency in the map are ' + currencies);








