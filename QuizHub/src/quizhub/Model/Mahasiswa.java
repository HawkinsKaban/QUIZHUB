package quizhub.Model;

public class Mahasiswa extends User {
    private String nim;
    private String nama;

    public Mahasiswa(String username, String password, String nim, String nama) {
        super(username, password);
        this.nim = nim;
        this.nama = nama;
    }

    @Override
    public String getRole() {
        return "Mahasiswa";
    }

    public String getNim() {
        return nim;
    }

    public String getNama() {
        return nama;
    }
}
