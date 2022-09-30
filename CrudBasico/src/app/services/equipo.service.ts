import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class EquipoService {

  url='/api' ;// ruta del servidor o donde esta corriendo mi api 
  //se inicializa en el constructor
  constructor(private http: HttpClient) { }

  //get equipos consulta todos los equipos
getEquipos(){
  return this.http.get(this.url);
}

//get un equipo
getUnEquipo(id:string){
  return this.http.get(this.url+'/'+id);
}

//agregar equipo
addEquipo(equipo:Equipo){
  return this.http.post( this.url,equipo);
}

//eliminar equipo
deleteEquipo(id:string){
  return this.http.delete(this.url+'/'+id)
}

//modificarequipo
editEquipo(id: string, equipo:Equipo){
  return this.http.put(this.url+'/'+id,equipo);
}

}

// las intefaces admiten los tipos dedATOS QUE recibe el formulario y validamos
export interface Equipo{
  id_equipo?:string;
  nombre?:string;
  logo?:string;
}