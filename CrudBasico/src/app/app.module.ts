import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AgregarComponent } from './componentes/agregar/agregar.component';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { ModificarComponent } from './componentes/modificar/modificar.component';

//importaciones necesarias
import {HttpClientModule} from '@angular/common/http'
import {FormsModule, ReactiveFormsModule} from '@angular/forms';
import { MapaComponent } from './componentes/mapa/mapa.component'
// no olvidar generar el servicio parala conexion api
// para la seleccion de paises 
import { MatSelectCountryModule } from "@angular-material-extensions/select-country";
import {DropdownModule} from 'primeng/dropdown';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import {AccordionModule} from 'primeng/accordion';     //accordion and accordion tab


@NgModule({
  declarations: [
    AppComponent,
    AgregarComponent,
    InicioComponent,
    ModificarComponent,
    MapaComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule ,
    MatSelectCountryModule.forRoot('en'), // you can use 'br' | 'de' | 'en' | 'es' | 'fr' | 'hr' | 'it' | 'nl' | 'pt' --> MatSelectCountrySupportedLanguages
    DropdownModule,
    BrowserAnimationsModule,   //Ngprime
    AccordionModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
