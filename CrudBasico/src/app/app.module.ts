import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AgregarComponent } from './componentes/agregar/agregar.component';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { ModificarComponent } from './componentes/modificar/modificar.component';

@NgModule({
  declarations: [
    AppComponent,
    AgregarComponent,
    InicioComponent,
    ModificarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
