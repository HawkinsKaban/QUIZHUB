
package quizhub.Model;

import java.util.Date;

public class Kuis {
    private String namaQuiz;
    private Date waktuDimulai;
    private Date waktuKadaluarsa;
    private int durasi;

    public Kuis(String namaQuiz, Date waktuDimulai, Date waktuKadaluarsa, int durasi) {
        this.namaQuiz = namaQuiz;
        this.waktuDimulai = waktuDimulai;
        this.waktuKadaluarsa = waktuKadaluarsa;
        this.durasi = durasi;
    }
    
    
    
}
