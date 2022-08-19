package Clases;

public class Socios {
	
	private int id_socio;
	private String nombre;
	private String apellido;
	private int dni;
	private String mail;
	private Boolean estado;
	
	
	public Socios(int id_socio,String nombre,String apellido,int dni, String mail,Boolean estado) {
		this.id_socio=id_socio;
		this.nombre=nombre;
		this.apellido=apellido;
		this.dni=dni;
		this.mail=mail;
		this.estado=estado;
	}
	
	public int getId_socio() {
		return id_socio;
	}
	public void setId_socio(int id_socio) {
		this.id_socio = id_socio;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}
	public int getDni() {
		return dni;
	}
	public void setDni(int dni) {
		this.dni = dni;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	/*public int getEstado() {
		return estado;
	}
	public void setEstado(int estado) {
		this.estado = estado;
	}*/
	public Boolean getEstado() {
		return estado;
	}
	public void setEstado(Boolean estado) {
		this.estado = estado;
	}
	
}
