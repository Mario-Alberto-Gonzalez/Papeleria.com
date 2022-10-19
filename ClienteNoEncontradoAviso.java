
package Grupo3.g25.Papeleria.com.excepciones;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice
public class ClienteNoEncontradoAviso {
     @ResponseBody
    @ExceptionHandler(ClienteNoEncontradoException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public String clienteNoEncontrado(ClienteNoEncontradoException ex) {
        return ex.getMessage();
    }
}
