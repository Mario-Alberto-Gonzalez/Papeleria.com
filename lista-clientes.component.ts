import { Component, OnInit } from '@angular/core';
import { ClienteService } from '../cliente.service';
import { cliente } from '../clientes';

@Component({
  selector: 'app-lista-clientes',
  templateUrl: './lista-clientes.component.html',
  styleUrls: ['./lista-clientes.component.css']
})
export class ListaClientesComponent implements OnInit {

  listaClientes: cliente[];

  constructor(private clieteServive: ClienteService) {
    this.listaClientes=[]
   }

  ngOnInit(): void {
    this.clieteServive.listaClientes().subscribe( (cliente: cliente)=>{
      this.listaClientes = this.listaClientes;
    })
  }

}
