package quizhub.Model;

public class Dosen extends User implements LevelKesusahan{
    private String nip;
    private String nama;
    private int kesulitan;

    public Dosen(String username, String password, String nip, String nama) {
        super(username, password);
        this.nip = nip;
        this.nama = nama;
    }

    @Override
    public String getRole() {
        return "Dosen";
    }

    public String getNip() {
        return nip;
    }

    public String getNama() {
        return nama;
    }

    @Override
    public void setKesulitan(int kesulitan) {
       this.kesulitan= kesulitan;
    }
}
