import { Component, OnInit } from '@angular/core';
//se importa el servicio desde de la conexion
import {EquipoService, Equipo} from '../../services/equipo.service';
//para cambiar de rutas ademasse debe inicializar, con activate route se puede recuperar el id que enviamos
import {Router, ActivatedRoute} from '@angular/router';

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css']
})
export class InicioComponent implements OnInit {

  //variables
  ListarEquipo!: Equipo[];

  constructor(
              private EquipoService:EquipoService, 
              private router:Router) { }

  ngOnInit(): void {
    this.listarEquipo();
  }

  listarEquipo(){
    this.EquipoService.getEquipos().subscribe(
      res=>{
        console.log(res);
        this.ListarEquipo=<any>res;
        /* const moneyDatas = Object.entries(res).map(i => i[1]);
        console.log(moneyDatas);
        this.ListarEquipo = moneyDatas[0]; */
      },
      err => console.log(err)
    )
  }

  eliminar(id:string){
    this.EquipoService.deleteEquipo(id.toString()).subscribe(res=>{
      console.log('equipo eliminado');
      this.listarEquipo();
    },
    err=> console.log(err));
    //console.log("Ocurrion un error de compilacion en BD");
  }

  modificar(id:string){
    this.router.navigate(['/edit/'+id]);
  }
}
