import java.text.SimpleDateFormat;
import java.util.Date;

public class DateHandler {
    protected static String dateFormat = "yyyy-MM-dd";


    public static String getDateToString(Date date){
        return (date.getYear()+1900) + "-" + (date.getMonth()+1) + "-" + (date.getDate());
    }

    public static Date getDate(String stringToDate){

        SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
        sdf.setLenient(false);

        try {
            Date date = sdf.parse(stringToDate);
            return date;
        } catch (Exception e) {

            System.err.println("incorrect date:" + e.getMessage());
            return new Date(0000,00,00);
        }


    }
}