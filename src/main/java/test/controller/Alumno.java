package test.controller;

public class Alumno {
    private int edad;
    private String alumno;

    public Alumno() {
    }

    public Alumno(String alumno, int edad) {
        this.alumno = alumno;
        this.edad = edad;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getAlumno() {
        return alumno;
    }

    public void setAlumno(String alumno) {
        this.alumno = alumno;
    }
}
