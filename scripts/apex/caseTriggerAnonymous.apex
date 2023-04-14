list<case> listcase = new list<case>();
for (Integer i = 0; i < 3; i++) {
    case c = new case();
    c.Subject = 'trigger case';
    c.Origin = 'Web';
    c.status = 'New';
    c.Description = 'resolve it, come on';
    listCase.add(c);
}
insert listCase;

list<case> allCases =[SELECT id, status FROM case WHERE Status = 'New'];
for (Case eachCase : allCases) {
    eachCase.Status = 'Working';
}

Update allCases;