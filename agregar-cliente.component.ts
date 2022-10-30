import { Component, OnInit } from '@angular/core';
import { ClienteService } from '../cliente.service';
import { cliente } from '../clientes';

@Component({
  selector: 'app-agregar-cliente',
  templateUrl: './agregar-cliente.component.html',
  styleUrls: ['./agregar-cliente.component.css']
})
export class AgregarClienteComponent implements OnInit {

  cliente : cliente 

  constructor(private clienteService: ClienteService) { 
    this.cliente = new cliente();
  }

  ngOnInit(): void {
  }
  guardarData(){
    console.log(this.cliente);
    this.clienteService.guardarCliente(this.cliente).subscribe();
  }

}
