package Model;

public class Account {
    private String acc;
    private String pass;
    private String type;
    

    

    public Account(String acc, String pass, String type) {
        this.acc = acc;
        this.pass = pass;
        this.type = type;
    }

    public String getAcc() {
        return acc;
    }


    public void setAcc(String acc) {
        this.acc = acc;
    }


    public String getPass() {
        return pass;
    }


    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getType() {
        return type;
    }

    

    

}
