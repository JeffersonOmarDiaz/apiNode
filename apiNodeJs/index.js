/* npm init ==> la primera instancia en js  

nodemon como dependencia de desaroolode la pag oficcial ===>
https://www.npmjs.com/package/nodemon
===>  npm install --save-dev nodemon
en el archivo package.json se ingresala variable dev
y ejecutamos con >> npm run dev

instalacion de express
npm install express mysql


por si aparece el error de que no se puede conetar en la BD
y actualizar la cadena de coneccion
ALTER USER 'root'@'localhost' 
IDENTIFIED WITH mysql_native_password BY 'root123';
*/

//conexion a la BD
require('./config/conexion.js');
//llamado a la dependencia
const express = require('express')

//configuramos el puerto donde se VA A CONfigurar el servidor
const port = (process.env.port ||3000); //si ya esta en produccion recupera el puerto en dponde esta, sino llama al puerto 3000

//se llama a una instancia de express
const app = express();

//para que admita tipos de datos json
app.use(express.json())

//configurar el puerto
app.set('port', port);

//rutas
// despues del puerto 3000 se mostrara api para evitar problemas de conexion
app.use('/api', require('./rutas'))

//iniciar express
app.listen(app.get('port'), (error)=>{
    if(error){
        console.log('error al iniciar el servidor')
    }else{
        console.log('servidor iniciado en el puerto: ' + port)
    }
});

