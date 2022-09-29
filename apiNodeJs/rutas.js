//const rutas = require('express').Router();
//asignamos todas las rutas
//tiene parametros de entrada y salida req y res
/* rutas.get('/',function(req, res){
    res.send('saludos desde las rutas/inicio') // por lo pronto se comentara
}); */

//***********agregamos las rutas  */
///para las consultas se llama a la conexion a laBD
const router = require('express').Router();
const conexion = require('./config/conexion')

//get todos los equipos
router.get('/',(req, res)=>{
    let sql = 'select * from tb_equipo'
    //en este caso se obtienen 3 respuestas 1 error
    conexion.query(sql,(err, rows, fields) =>{
        {
            if(err) throw err;
            else{
                res.json(rows)
            }
        }
    })
} )

//get un equipo}
// se traera por el ide del equipo es importante que llegue con el id 
router.get('/:id',(req, res)=>{
    const {id} = req.params
    let sql = 'select * from tb_equipo where id_equipo =?'
    //en este caso se obtienen 3 respuestas 1 error
    conexion.query(sql,[id],(err, rows, fields) =>{
        {
            if(err) throw err;
            else{
                res.json(rows)
            }
        }
    })
} )

// agregar elemento por metodo post
router.post('/', (req, res)=>{
    const{nombre, logo} = req.body // las comillas invertidas permite llamar a objetos o variables ``
    let sql = `insert into tb_equipo(nombre, logo) values('${nombre}', '${logo}')`
    conexion.query(sql,(err, rows, fields) =>{
        {
            if(err) throw err;
            else{
                res.json({status: 'equipo agregado'})
            }
        }
    })
})

// para eliminar 
router.delete('/:id',(req, res)=>{
    const{id} = req.params

    let sql = `delete from tb_equipo where id_equipo = '${id}'`
    conexion.query(sql,(err, rows, fields) =>{
        {
            if(err) throw err;
            else{
                res.json({status: 'equipo eliminado'})
            }
        }
    })
})


//se exporta la ruta creada y se hace el llamado desde index.js
//module.exports = rutas;
module.exports = router;