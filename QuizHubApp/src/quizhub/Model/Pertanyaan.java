package quizhub.Model;

public class Pertanyaan {
    private String soal;
    private String[] pilihan;

    public Pertanyaan(String soal, String[] pilihan) {
        this.soal = soal;
        this.pilihan = pilihan;
    }

    public String getSoal() {
        return soal;
    }

    public String[] getPilihan() {
        return pilihan;
    }
}
