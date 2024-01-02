package quizhub.Model;

public abstract class User {
    private int id;
    private String nama;
    private String username;
    private String password;

    public User(int id, String nama, String username, String password) {
        this.username = username;
        this.password = password;
    }
    
    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }


    // Getter and setter methods for username
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    // Getter and setter methods for password
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public abstract String getRole();
    
}
