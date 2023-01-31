public class PrimativeDataTypeDemo2 {
    
    public void printNewDate(){
    system.debug('print new dates here.');   
    //new date instance             year  month day .
    Date newDate = Date.newInstance(1995,  02,  15);
    system.debug('new date is ==> ' + newDate);   
    
    Date newDate2 = Date.newInstance(2014,  09,  22);
    system.debug('new second date is ==> ' + newDate2);  

    Date todayDate = Date.today();
    system.debug('today date is ' + todayDate);
    }

    public void printNewTime(){
        Time myTime = Time.newInstance(18, 15, 10, 50);
        system.debug('my time is' + myTime);

        Time myTimeAdd = Time.newInstance(9, 90, 19, 54);
        system.debug('my time with add is' + myTimeAdd);
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(8, 30, 0, 0);

        //1. new Datetime using Date and Time
        Datetime dt1 = datetime.newInstance(newDate, newTime);
        system.debug('dt 1 is ===? ' + dt1);

        //2. new Datetime using Year, month, day
        Datetime dt2 = datetime.newInstance(2020, 7, 7);
        system.debug('dt2 is ==> ' + dt2);

        //3. new Datetime using Year, month, day, hour, minute, seconds
        Datetime dt3 = datetime.newInstance(2022, 1, 10, 5, 15, 10);
        system.debug('dt3 is ==> ' + dt3);

        // 4. Create newInstance milliseconds for 1 Jan 1970 - 00 00 00 gmt
        Long longTime = 5621289654845L;
        datetime dt4_1 = Datetime.newInstance(longTime);
        system.debug('dt4_1 ' + dt4_1);

    }

}