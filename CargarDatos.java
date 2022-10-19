
package Grupo3.g25.Papeleria.com;

import Grupo3.g25.Papeleria.com.entidades.Cliente;
import Grupo3.g25.Papeleria.com.repositorios.ClienteRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class CargarDatos {
     private static final Logger log = LoggerFactory.getLogger(CargarDatos.class);

    @Bean
    public CommandLineRunner inicializarBD(ClienteRepository repository) {

        return (args) -> {
            log.info("registrando " + repository.save(new Cliente("54031254", "Sandra Liliana", "Gomez",
                    "Bogota", "Av 13 # 12-60", "sangomez@gmail.com", "320 548 7623")));
            log.info("registrando " + repository.save(new Cliente("72456890", "Juan David", "Perez Olarte",
                    "Medellín", "Cll 52 sur # 20-35", "juanpolarte@gmail.com", "310 203 6879")));
            log.info("registrando " + repository.save(new Cliente("1013548792", "Karol Viviana", "Hernandez Bautista",
                    "Bucaramanga", "Cra 30 # 12-17", "karolbautista@gmail.com", "300 210 5478")));
            log.info("registrando " + repository.save(new Cliente("52148703", "Martha", "Avila Correa", 
                    "Cali", "Cll 10 # 60-30", "macorrea@gmail.com", "322 547 0100")));
            log.info("registrando " + repository.save(new Cliente("76456870", "Ramiro Jose", "Martinez Cuesta", 
                    "Bogotá", "Cra 16 sur # 53-20", "ramirojcuesta@gmail.com", "313 750 3215")));
            
        };

    }

}

