
package Grupo3.g25.Papeleria.com.repositorios;

import Grupo3.g25.Papeleria.com.entidades.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ClienteRepository extends JpaRepository<Cliente, Long> {
    
}
