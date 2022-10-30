import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

import { AppComponent } from './app.component';
import { ListaClientesComponent } from './lista-clientes/lista-clientes.component';
import { HeaderComponent } from './header/header.component';
import { NavComponent } from './nav/nav.component';
import { AsideComponent } from './aside/aside.component';
import { FooterComponent } from './footer/footer.component';
import { AgregarClienteComponent } from './agregar-cliente/agregar-cliente.component';
import { AppRoutingModule } from './app-routing.module';
import { DashboardComponent } from './dashboard/dashboard.component';
import { DetalleClienteComponent } from './detalle-cliente/detalle-cliente.component';


@NgModule({
  declarations: [
    AppComponent,
    ListaClientesComponent,
    HeaderComponent,
    NavComponent,
    AsideComponent,
    FooterComponent,
    AgregarClienteComponent,
    DashboardComponent,
    DetalleClienteComponent,
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
