public class Alumno {
    private String Nombre;
    private String Apellido;
    private int DNI;
    private String Correo;


    public Alumno ( String Nombre, String Apellido, int DNI, String Correo){
        this.Nombre=Nombre;
        this.Apellido=Apellido;
        this.DNI=DNI;
        this.Correo=Correo;
    }

    public String getNombre() {
        return nombre;
    }
    public String getApellido() {
        return apellido;
    }

    public int getDNI() {
        return DNI;
    }

    public String getCorreo() {
        return Correo;
    }
    
}

