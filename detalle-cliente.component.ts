import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { ClienteService } from '../cliente.service';
import { cliente } from '../clientes';

@Component({
  selector: 'app-detalle-cliente',
  templateUrl: './detalle-cliente.component.html',
  styleUrls: ['./detalle-cliente.component.css']
})
export class DetalleClienteComponent implements OnInit {

  cliente: cliente;

  constructor(
    private clienteServicio: ClienteService,
    private ruta: ActivatedRoute
  ) {
     this.cliente = new cliente()
    }

  ngOnInit(): void {
    const id: number = Number(this.ruta.snapshot.paramMap.get('idCliente'));
    this.clienteServicio.getCliente(id).subscribe((cliente : cliente)=>{
    this.cliente = cliente
    })
  }

}
