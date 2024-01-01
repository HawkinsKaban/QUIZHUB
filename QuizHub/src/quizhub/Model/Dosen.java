package quizhub.Model;

public class Dosen extends User {
    private String nip;
    private String nama;

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
}
