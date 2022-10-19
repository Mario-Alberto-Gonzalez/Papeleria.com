package Grupo3.g25.Papeleria.com.controladores;
import Grupo3.g25.Papeleria.com.entidades.Cliente;
import Grupo3.g25.Papeleria.com.excepciones.ClienteNoEncontradoException;
import Grupo3.g25.Papeleria.com.repositorios.ClienteRepository;
import java.util.List;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ClienteController {
    private final ClienteRepository repository;

    public ClienteController(ClienteRepository repository) {
        this.repository = repository;
    }
    //leer
    @GetMapping("/clientes")
    public List<Cliente> listaClientes() {
        return repository.findAll();
    }
    @GetMapping("/clientes/{idCliente}")
    public Cliente getCliente(@PathVariable Long idCliente) {
        return repository.findById(idCliente).orElseThrow(() -> {
            return new ClienteNoEncontradoException(idCliente);
        });
    }
    //crear
    @PostMapping("/Clientes")
    public Cliente crearCliente(@RequestBody Cliente cliente) {
        return repository.save(cliente);
    }
    //actualizar
    @PutMapping("/Clientes/{idCliente}")
    public Cliente actualizarCliente(@RequestBody Cliente nuevoCliente,
            @PathVariable Long idCliente) {
        return repository.findById(idCliente)
                .map(cliente -> {
                    cliente.setIdentificacion(nuevoCliente.getIdentificacion());
                    cliente.setNombres(nuevoCliente.getNombres());
                    cliente.setApellidos(nuevoCliente.getApellidos());
                    cliente.setCiudad(nuevoCliente.getCiudad());
                    cliente.setDireccion(nuevoCliente.getDireccion());
                    cliente.setCorreoElectronico(nuevoCliente.getCorreoElectronico());
                    cliente.setNumeroCelular(nuevoCliente.getNumeroCelular());
                    return repository.save(cliente);
                }).orElseGet(() -> {
            nuevoCliente.setIdCliente(idCliente);
            return repository.save(nuevoCliente);
        });
    }

    //eliminar
    @DeleteMapping("/clientes/{idCliente}")
    public void eliminarCliente(@PathVariable Long idCliente) {
        repository.deleteById(idCliente);
    }

}


