import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarClienteComponent } from './agregar-cliente/agregar-cliente.component';
import { DashboardComponent } from './dashboard/dashboard.component';
import { ListaClientesComponent } from './lista-clientes/lista-clientes.component';
import { DetalleClienteComponent } from './detalle-cliente/detalle-cliente.component';

const routes: Routes = [
  {path:'', component: DashboardComponent},
  {path:'clientes', component: ListaClientesComponent},
  {path:'dashboard', component: DashboardComponent},
  {path:'agregar-cliente', component: AgregarClienteComponent},
  {path:'cliente/:idCliente', component: DetalleClienteComponent},
]

@NgModule({
  declarations: [],
  imports: [
    RouterModule.forRoot(routes)
  ],
  exports:[RouterModule]
})
export class AppRoutingModule { }
