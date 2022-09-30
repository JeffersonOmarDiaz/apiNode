import { Component, OnInit } from '@angular/core';
//se importa el servicio desde de la conexion
import {EquipoService} from '../../services/equipo.service'

@Component({
  selector: 'app-inicio',
  templateUrl: './inicio.component.html',
  styleUrls: ['./inicio.component.css']
})
export class InicioComponent implements OnInit {

  constructor(private EquipoService:EquipoService) { }

  ngOnInit(): void {
    this.listarEquipo();
  }

  listarEquipo(){
    this.EquipoService.getEquipos().subscribe(
      res=>{
        console.log(res)
      },
      err => console.log(err)
    )
  }
}
