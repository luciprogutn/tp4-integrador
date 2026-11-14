public class Curso {
    private String codigo;
    private String idioma;
    private String nivel;
    private String turno;
    private int cupo;
    private double valorCuota;

    public Curso() {}


    public Curso(String codigo, String idioma, String nivel, String turno, int cupo, double valorCuota) {
        this.codigo = codigo;
        this.idioma = idioma;
        this.nivel = nivel;
        this.turno = turno;
        this.cupo = cupo;
        this.valorCuota = valorCuota;
    }

    public String getCodigo() {
        return codigo;
    }
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getIdioma() {
        return idioma;
    }
    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public String getNivel() {
        return nivel;
    }
    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getTurno() {
        return turno;
    }
    public void setTurno(String turno) {
        this.turno = turno;
    }

    public int getCupo() {
        return cupo;
    }
    public void setCupo(int cupo) {
        this.cupo = cupo;
    }

    public double getValorCuota() {
        return valorCuota;
    }
    public void setValorCuota(double valorCuota) {
        this.valorCuota = valorCuota;
    }
}