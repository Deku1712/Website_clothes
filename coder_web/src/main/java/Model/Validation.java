package Model;

import java.util.regex.Pattern;

public interface Validation {
    
    Pattern PHONE_PATTERN = Pattern.compile("^\\d{10}$");
}
