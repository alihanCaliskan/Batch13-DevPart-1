public class RankHandler {
    public string rankPrize(integer rank){
        string prize = '';
        if (rank == 1) {
            prize = 'Gold';
        } else if (rank == 2) {
            prize = 'Silver';
        } else if (rank == 3) {
            prize = 'Bronze';
        } else {
            if (rank <= 0) {
                prize = 'Invalid input!';
            
            } else if (rank <= 10) {
                prize = 'Top 10 Certification';
            } else {
                prize = 'Participation Certification';
            }
        }

        return prize;
    }

    public string rankPrizeSwitch(integer rank){
        /*if (rank <= 0 ) {
            string error = 'Invalid Input!';
            return error;
            system.debug(error);
        } else {
            */
            string prize = '';
        switch on rank {
            when 1  {
                prize = 'Gold';
            }
            when 2  {
                prize = 'Silver';
            }
            when 3  {
                prize = 'Bronze';
            }
            when 4,5,6,7,8,9,10  {
                prize = 'Top 10 Certification';
            }
            when else {
                prize = 'Participation Certification';
            }
        }
    //}
        

        return prize;
    }
}