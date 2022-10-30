import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { cliente } from './clientes';


@Injectable({
  providedIn: 'root'
})
export class ClienteService {
  private clienteUrl: string;
  

  constructor(private http: HttpClient) { 
    this.clienteUrl = 'http://localhost:8080/clientes';
  }
  
  public listaClientes(){
    return this.http.get<cliente >(this.clienteUrl)
  }

  public getCliente(idCliente: number){
    let ruta = `${this.clienteUrl}/${idCliente}`;
    return this.http.get<cliente >(ruta)
  }
  public guardarCliente (cliente: cliente){ 
    return this.http.post<cliente>(this.clienteUrl, cliente);
  }
  public eliminarCliente(idCliente: number){
    let ruta = `${this.clienteUrl}/${idCliente}`;
    return this.http.delete<cliente >(ruta)
  }
  public actualizarCliente(idCliente: number, cliente: cliente){
    let ruta = `${this.clienteUrl}/${idCliente}`;
    return this.http.put<cliente >(ruta, cliente)
  }
}
