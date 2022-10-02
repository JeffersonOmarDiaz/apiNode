import { Component, OnInit } from '@angular/core';
import {Equipo, EquipoService} from '../../services/equipo.service';
import {Router} from '@angular/router';
@Component({
  selector: 'app-agregar',
  templateUrl: './agregar.component.html',
  styleUrls: ['./agregar.component.css']
})
export class AgregarComponent implements OnInit {

  equipo: Equipo={
    id_equipo: '',
    nombre: '',
    logo: ''
  }
  constructor(private equipoService:EquipoService, private router:Router) { }

  ngOnInit(): void {
  }

  //para agregar el equipo necesitamos eliminar el id porque ese no lop necesitamos
  agregarEq(){
    //delete this.equipo.id_equipo;
    this.equipoService.addEquipo(this.equipo).subscribe();
    this.router.navigate(['/inicio']);
  }
}
