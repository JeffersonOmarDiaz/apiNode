import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AgregarComponent } from './componentes/agregar/agregar.component';
import { InicioComponent } from './componentes/inicio/inicio.component';
import { ModificarComponent } from './componentes/modificar/modificar.component';

const routes: Routes = [
  //esta seccion se encuantran las rutas url
  { path:'', redirectTo:'/inicio', pathMatch:'full'},
  { path:'inicio', component: InicioComponent},
  { path:'add', component: AgregarComponent},
  //cuando se pasa un id para modificar debe de ser de esta forma /:id
  { path:'edit/:id', component: ModificarComponent},
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
