import java.time.LocalDate;

public class Inscripcion {
 private int id_inscripcion;
 private Alumno alumno;
 private Curso curso;
 private LocalDate fecha;
 private boolean pagada;

 public Inscripcion() {}

 public Inscripcion(Alumno alumno, Curso curso, LocalDate fecha, boolean pagada) {
  this.alumno = alumno;
  this.curso = curso;
  this.fecha = fecha;
  this.pagada = pagada;
 }

 public int getId_inscripcion(){
  return id_inscripcion;
 }

 public void setId_inscripcion(int id_inscripcion){
  this.id_inscripcion = id_inscripcion;
 }

 public Alumno getAlumno(){
  return alumno;
 }
 public void setAlumno(Alumno alumno){
  this.alumno = alumno;
 }

 public Curso getCurso() {
  return curso;
 }
 public void setCurso(Curso curso) {
  this.curso = curso;
 }

 public LocalDate getFecha() {
  return fecha;
 }
 public void setFecha(LocalDate fecha) {
  this.fecha = fecha;
 }

 public boolean isPagada() {
  return pagada;
 }
 public void setPagada(boolean pagada) {
  this.pagada = pagada;
 }
}