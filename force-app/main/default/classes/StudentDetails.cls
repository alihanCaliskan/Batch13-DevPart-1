public class StudentDetails {
    public void nameOfStudent() {
        String firstName = 'Alihan';
        String lastName = 'Caliskan';
        String fullName = firstName + ' ' + lastName;
        String country = 'somewhere in the earth';
        String email = 'caliskan@email.com';
        String phoneNumber = '4583591276';
        Integer batchNo = 13;
        Decimal testScore = 87.92;
        Boolean isCurrentStudent = true;

        Object studentContact = 'Student Name is ' + fullName + '.' + ' He lives in ' + country + '.' + 'His email is ' + email + ' and phone is ' + phoneNumber + '.';
        Object studentInfo = 'He is a current student : ' + isCurrentStudent + '.' + ' His Batch number is ' + batchNo + '.' + ' His test score is ' + testScore + '.';
        system.debug(studentContact);
        system.debug(studentInfo);
    }
}