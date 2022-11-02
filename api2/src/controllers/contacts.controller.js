import {getConnection} from "../database/database";

/******************************************** para hacer un get de varios argumentos */
const getLanguages= async(req, res) =>{
    try {
        //res.json('Este es de Omar');
        const connection=await getConnection();
        const result= await connection.query('CALL  sp_B_GetBasicContactsInformationList()',(err,rows,fields)=>{
            if (err) throw err;
            else { 
                console.log(rows[0]);
                res.json(rows[0]);
            }
        });
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}


//es necesario exporta la funcion para que esta funcione de forma adecuada 
export const methods = {
    getLanguages
}