import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router} from '@angular/router';
import {Equipo, EquipoService} from '../../services/equipo.service'
@Component({
  selector: 'app-modificar',
  templateUrl: './modificar.component.html',
  styleUrls: ['./modificar.component.css']
})
export class ModificarComponent implements OnInit {

  equipo: Equipo={
    id_equipo: '',
    nombre: '',
    logo: ''
  }
  constructor(
    private equipoService:EquipoService, 
    private router:Router,
    private activatedRoute:ActivatedRoute) { }

  ngOnInit(): void {
    //para acceder al parametro id se lo realiaza de la siguiete forma :params.['id']
    const id_entrada = this.activatedRoute.snapshot.params['id'];

    //para verificar que el id exista
    if(id_entrada){
      console.log(' id_entrada ==>>; '+id_entrada);
      this.obtenerEquipo(id_entrada);
    }else{
      console.log('No existe');
    }

  }
 
  //obtener equipo
  obtenerEquipo(id: string) {
    this.equipoService.getUnEquipo(id).subscribe(
      res => {
        const moneyDatas = Object.entries(res).map(i => i[1]);
        console.log(moneyDatas);
        this.equipo = moneyDatas[0];
        console.log(this.equipo);
      }, 
      err=>console.log(err)
    )

  }

  //para editar el equipo necesitamos enviar el parametro de tipo id
  editEq(id:string){
    //delete this.equipo.id_equipo;
    this.equipoService.editEquipo(id, this.equipo).subscribe(
      res=>{
        console.log(res);
      },
      err=>console.log(err)
    );
    this.router.navigate(['/inicio']);
  }
}
