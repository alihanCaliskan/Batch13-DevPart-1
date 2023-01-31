list<string> listStr = new list<string>();
listStr.add('sounds good');
listStr.add('ok');
listStr.add('method');
listStr.add('clear');
listStr.add('🙌');

string concateStr = ' ';
For(string eachStr : listStr){
    system.debug(eachStr);
    concateStr += ' || ' + eachStr;
}
system.debug(concateStr);