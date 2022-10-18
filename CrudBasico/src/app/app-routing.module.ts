import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarComponent } from './componentes/agregar/agregar.component';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { MapaComponent } from './componentes/mapa/mapa.component';
import { ModificarComponent } from './componentes/modificar/modificar.component';

const routes: Routes = [
  //esta seccion se encuantran las rutas url
  { path:'', redirectTo:'/map', pathMatch:'full'},
  { path:'inicio', component: InicioComponent},
  { path:'add', component: AgregarComponent},
  //cuando se pasa un id para modificar debe de ser de esta forma /:id
  { path:'edit/:id', component: ModificarComponent},
  //para el mapa de google maps 
  { path:'map', component: MapaComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
