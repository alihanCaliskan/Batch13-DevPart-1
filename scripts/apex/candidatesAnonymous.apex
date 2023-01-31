Candidates.companyName = 'SoftInnovas';

Candidates c1 = new Candidates();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidate();
system.debug('INSTANCE 1.number of cantidates ' + Candidates.countCandidates);

Candidates c2 = new Candidates();
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidate();
system.debug('INSTANCE 2.number of cantidates ' + Candidates.countCandidates);

Candidates.companyName = 'Vandeley Industies';

Candidates c3 = new Candidates();
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidate();
system.debug('INSTANCE 3. number of cantidates ' + Candidates.countCandidates);
