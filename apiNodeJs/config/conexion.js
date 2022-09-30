const mysql = require('mysql');
const connection = mysql.createConnection({
host: 'localhost',
user:'root',
//password: '12345', //house
password: 'root123',
database: 'testom'
});

//para ver si hay probleamd e conexion
connection.connect((err) =>{
    if(err){
        console.log('Ha ocurrido un error: ' + err)
    }else{
        console.log('La base de datos se conecto !!!')
    }
});
 
// para usar el modulo desde cualquier parte de la base de datos
module.exports = connection;