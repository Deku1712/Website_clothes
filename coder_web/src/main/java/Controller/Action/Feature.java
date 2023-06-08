package Controller.Action;




import java.util.Date;
import java.util.Random;

public class Feature {
    public String ranDomCodeBill(){
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        int length = 10;
        Random random = new Random();
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            sb.append(randomChar);
        }
        return sb.toString();
    }
    public Date getNow(){
        Date currentDate = new Date();

        return currentDate;
    }
}
