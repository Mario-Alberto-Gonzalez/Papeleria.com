package Grupo3.g25.Papeleria.com.entidades;

import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cliente {
    private @Id @GeneratedValue long idCliente;
    private String identificacion;
    private String nombres;
    private String apellidos;
    private String ciudad;
    private String direccion;
    private String correoElectronico;
    private String numeroCelular;
            
    public Cliente() {
    }

    public Cliente(String identificacion, String nombres, String apellidos, String ciudad, String direccion, String correoElectronico, String numeroCelular) {
        this.identificacion = identificacion;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.ciudad = ciudad;
        this.direccion = direccion;
        this.correoElectronico = correoElectronico;
        this.numeroCelular = numeroCelular;
    }


    public long getIdClientes() {
        return idCliente;
    }

    public void setIdClientes(long idClientes) {
        this.idCliente = idCliente;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getNumeroCelular() {
        return numeroCelular;
    }

    public void setNumeroCelular(String numeroCelular) {
        this.numeroCelular = numeroCelular;
    }

    @Override
    public String toString() {
        return "Cliente{" + "idCliente=" + idCliente + ", identificacion=" + identificacion + ", nombres=" 
                + nombres + ", apellidos=" + apellidos + ", ciudad=" + ciudad + ", direccion=" + direccion + ","
                + " correoElectronico=" + correoElectronico + ", numeroCelular=" + numeroCelular + '}';
    }


    @Override
    public boolean equals(Object o) {

        if (this == o) {
            return true;
        }
        if (!(o instanceof Cliente)) {
            return false;
        }

        Cliente cliente = (Cliente) o;

        return (this.idCliente == cliente.idCliente)
                && (this.identificacion.equals(cliente.identificacion))
                && (this.nombres.equals(cliente.nombres)) 
                && (this.apellidos.equals(cliente.apellidos))
                && (this.ciudad.equals(cliente.ciudad))
                && (this.direccion.equals(cliente.direccion))
                && (this.correoElectronico.equals(cliente.correoElectronico))
                && (this.numeroCelular.equals(cliente.numeroCelular));

    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 97 * hash + (int) (this.idCliente ^ (this.idCliente >>> 32));
        hash = 97 * hash + Objects.hashCode(this.identificacion);
        hash = 97 * hash + Objects.hashCode(this.nombres);
        hash = 97 * hash + Objects.hashCode(this.apellidos);
        hash = 97 * hash + Objects.hashCode(this.ciudad);
        hash = 97 * hash + Objects.hashCode(this.direccion);
        hash = 97 * hash + Objects.hashCode(this.correoElectronico);
        hash = 97 * hash + Objects.hashCode(this.numeroCelular);
        return hash;
    }

    public void setIdCliente(Long idCliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

}

