
package Grupo3.g25.Papeleria.com.excepciones;

public class ClienteNoEncontradoException extends RuntimeException {
     public ClienteNoEncontradoException(Long idCliente) {
        super("No se encontró cliente registrado con id: " + idCliente);
    }
}
