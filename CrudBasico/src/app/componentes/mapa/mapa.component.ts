///<reference path="../../../../node_modules/@types/googlemaps/index.d.ts"/>
import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms'
import { ElementRef, ViewChild, Renderer2 } from '@angular/core'
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-mapa',
  templateUrl: './mapa.component.html',
  styleUrls: ['./mapa.component.css']
})
export class MapaComponent implements OnInit {

  @ViewChild('divMap') divMap!: ElementRef;
  @ViewChild('inputPlaces') inputPlaces!: ElementRef;

  mapa!: google.maps.Map;
  markers: google.maps.Marker[];
  distancia!: string;
  formMapas!: FormGroup;
  constructor(private renderer: Renderer2,
              private http: HttpClient) {
    this.markers = [];

    this.formMapas = new FormGroup({

      busqueda: new FormControl(''),
      direccion: new FormControl(''),
      referencia: new FormControl(''),
      ciudad: new FormControl(''),
      provincia: new FormControl(''),
      region: new FormControl(''),
      codeZip: new FormControl(''),
      country:new FormControl(''),
    })
  }

  myData: any;

  ngOnInit(): void {
    this.http.get('https://trial.mobiscroll.com/content/countries.json').subscribe((resp: any) => {
            const countries = [];
            for (let i = 0; i < resp.length; ++i) {
                const country = resp[i];
                countries.push({ text: country.text, value: country.value });
            }
            this.myData = countries;
        });
  }


  async ngAfterViewInit(): Promise<void> {

    const opciones = {
      enableHighAccuracy: true,
      timeout: 5000,
      maximumAge: 0
    }

    if (navigator.geolocation) {

      //navigator.geolocation.getCurrentPosition(async (position) => {

        await this.cargarMapa();
        //console.log("Posicion por entender: "+ Object.values(position));
        this.cargarAutocomplete();

      //}, null, opciones);


    } else {
      console.log("navegador no compatible")
    }

  };

  onSubmit() {
    console.log("Datos del formulario: ", this.formMapas.value)
  };


  //calcular ruta
  mapRuta() {

    const directionService = new google.maps.DirectionsService();
    const directionRender = new google.maps.DirectionsRenderer();

    directionRender.setMap(this.mapa);

    directionService.route({

      origin: 'Quilpué, Chile',
      destination: 'Viña del Mar, Chile',
      travelMode: google.maps.TravelMode.DRIVING

    }, resultado => {
      console.log(resultado);
      directionRender.setDirections(resultado);

      this.distancia = resultado.routes[0].legs[0].distance.text;

    });

  }



  private cargarAutocomplete() {

    const autocomplete = new google.maps.places.Autocomplete(this.renderer.selectRootElement(this.inputPlaces.nativeElement), {
      componentRestrictions: {
        country: ["USA"]
      },
      fields: ["address_components", "geometry"],
      types: ["address"],
    })


    google.maps.event.addListener(autocomplete, 'place_changed', () => {

      const place: any = autocomplete.getPlace();
      console.log("el place completo es:", place)

      this.mapa.setCenter(place.geometry.location);
      const marker = new google.maps.Marker({
        position: place.geometry.location
      });

      marker.setMap(this.mapa);
      this.llenarFormulario(place);
      console.log("Lo que contiene el place es: "+place.geometry.location);
    })
  }

  llenarFormulario(place: any) {

    const addressNameFormat: any = {
      'route': 'long_name',
      'street_number': 'short_name',
      'sublocality_level_1': 'long_name',
      'administrative_area_level_1': 'long_name',
      'administrative_area_level_2': 'short_name',
      'administrative_area_level_3': 'short_name',
      'country': 'long_name',
      'postal_code':  'long_name'
    };

    const getAddressComp = (type: any) => {
      for (const component of place.address_components) {
        if (component.types[0] === type) {

          return component[addressNameFormat[type]];
        }
      }
      return ' '
    };

    const componentForm = {
      direccion: 'location',
      ciudad: "sublocality_level_1",//"administrative_area_level_3",
      provincia: 'administrative_area_level_2',
      region: 'administrative_area_level_1',
      codeZip: 'postal_code',
      country: 'country'
    };




    Object.entries(componentForm).forEach(entry => {
      const [key, value] = entry;

      this.formMapas.controls[key].setValue(getAddressComp(value))
    });

    this.formMapas.controls['direccion'].setValue(getAddressComp('route') + ' ' + getAddressComp('street_number'))
  };

  cargarMapa(): any {
const latitudDefault: Number = -97.0000000;
const longitudDefault: Number = 38.0000000;

    const opciones = {
      center: new google.maps.LatLng(33.792305, -87.598531),
      zoom: 5,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    this.mapa = new google.maps.Map(this.renderer.selectRootElement(this.divMap.nativeElement), opciones)

    const markerPosition = new google.maps.Marker({
      position: this.mapa.getCenter(),
      title: "Omar",
    });

    markerPosition.setMap(this.mapa);
    this.markers.push(markerPosition);
  };

}
