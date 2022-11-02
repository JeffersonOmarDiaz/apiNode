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

/**para hacer un get con un arumetno en especifico */
const getLanguage= async(req, res) =>{
    let sql = ``;
    try {
        //res.json('Este es de Omar');
        console.log(req.params.id);
        const idConsulta=req.params.id;
        console.log(idConsulta);
        sql=`CALL sp_B_getContactById('${idConsulta}')`;
        const connection=await getConnection();
        const result= await connection.query(sql,(err,rows,fields)=>{
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


/******************************************* Para hacer un post  */
const addLanguages=async(req, res) =>{
    let sql = ``;
    try {
        const{
            id_preffix_table, 
            firstN,
            middleN,
            mothersMaidenNa,
            lastN,
            nickN,
            birthdaydate,
            id_suffix_table} = req.body // las comillas invertidas permite llamar a objetos o variables ``
console.log(req.body);
            if(id_preffix_table === undefined || firstN=== undefined || middleN=== undefined || mothersMaidenNa=== undefined ||lastN=== undefined || nickN===undefined || birthdaydate === undefined || id_suffix_table === undefined ){
                res.status(400).json({message: "Bad request. Please fill all field."});
            }else{
                const connection=await getConnection();
                sql = `CALL  sp_C_insertContact(
                    '${id_preffix_table}',
                    '${firstN}',
                    '${middleN}',
                    '${mothersMaidenNa}',
                    '${lastN}',
                    '${nickN}',
                    '${birthdaydate}',
                    '${id_suffix_table}')`
                const result=await connection.query(sql,(err,rows, fields)=>{
                    //res.json(result.rows);
                    if(err) throw err;
                    else{
                        //res.json({status: 'added contact'});
                        res.json(rows);
                    }
                    sql = ``;
                })
            }
       // res.json('addLanguaje');
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}


//es necesario exporta la funcion para que esta funcione de forma adecuada 
export const methods = {
    getLanguages,
    getLanguage,
    addLanguages,
}