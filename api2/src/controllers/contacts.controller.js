import { getConnection } from "../database/database";

/********************************************  PARA LOS METODOS GET */
//*    -------------- listado de los contactos registrados se debe hacer mediante paginacion
const getBasicContactsInformationList = async (req, res) => {
    try {
        //res.json('Este es de Omar');
        console.log("Trata de obtener  las listas de usuarios");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_GetBasicContactsInformationList()', (err, rows, fields) => {
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

//*** ***************************detalle del cliente seleccionado mediante el id *
const get_contact_information_byid = async (req, res) => {
    let sql = '';
    try {
        //res.json('Este es de Omar');
        console.log("Trata de obtener  el usuario  seleccionado");
        const connection = await getConnection();
        let idConsulta = req.params.id;
        console.log("Obtiene el id de usuario para la consulta: " + idConsulta);
        sql = `CALL sp_B_getContactById(
                '${idConsulta}'
            )`

        const result = await connection.query(sql, (err, rows, fields) => {
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

// obtiene los tipos de telefonos como: home, mobil, etc
const getTypePhones = async (req, res) => {
    try {
        console.log("Trata de obtener  las listas de telefonos");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_get_phones_type_True()', (err, rows, fields) => {
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

// obtiene los tipos de sufijos como: law, medical... etc
const getSuffixName = async (req, res) => {
    try {
        console.log("Trata de obtener  las listas de suffixx name");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_GetSuffixname_TRUE()', (err, rows, fields) => {
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
// obtiene los prefijos: MR, miss, etc
const getPreffixName = async (req, res) => {
    try {
        console.log("Trata de obtener  las listas de preffix name");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_GetPreffixname_TRUE()', (err, rows, fields) => {
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
// obtiene los tipos de emails como: home, mobil, etc
const getEmailsType = async (req, res) => {
    try {
        console.log("Trata de obtener  las listas de tipos de email ");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_get_emails_type_True()', (err, rows, fields) => {
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

// obtiene los tipos de edi como: home, work, etc
const getAddressType = async (req, res) => {
    try {
        console.log("Trata de obtener  las listas de address ");
        const connection = await getConnection();
        const result = await connection.query('CALL  sp_B_get_adress_type_True()', (err, rows, fields) => {
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


/********************************************  PARA LOS METODOS POST */
/******************* metodo para insertar un nuevo contacto  */
const addBasicContactInformation = async (req, res) => {
    let sql = ``;
    try {
        const {
            id_preffix_table,
            firstN,
            middleN,
            mothersMaidenNa,
            lastN,
            nickN,
            birthdaydate,
            id_suffix_table } = req.body // las comillas invertidas permite llamar a objetos o variables ``
        console.log(req.body);
        if (id_preffix_table === undefined || firstN === undefined || middleN === undefined || mothersMaidenNa === undefined || lastN === undefined || nickN === undefined || birthdaydate === undefined || id_suffix_table === undefined) {
            res.status(400).json({ message: "Bad request. Please fill all field." });
        } else {
            const connection = await getConnection();
            sql = `CALL  sp_C_insertContact(
                    '${id_preffix_table}',
                    '${firstN}',
                    '${middleN}',
                    '${mothersMaidenNa}',
                    '${lastN}',
                    '${nickN}',
                    '${birthdaydate}',
                    '${id_suffix_table}')`
            const result = await connection.query(sql, (err, rows, fields) => {
                //res.json(result.rows);
                if (err) throw err;
                else {
                    //res.json({status: 'added contact'});
                    res.json(rows[0]);
                }
                sql = ``;
            })
        }
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

/*Para insertar un nuevo numero de telefono usando el id del usuario */
const addContactPhone = async (req, res) => {
    let sql = ``;
    try {
        const {
            id_contact,
            countryCode,
            dialCode,
            e164number,
            internationalNumber,
            number_c,
            national_number,
            id_adress_contact_type
        } = req.body // las comillas invertidas permite llamar a objetos o variables ``
        if (id_contact === undefined || id_adress_contact_type === undefined) {
            res.status(400).json({ message: "Bad request. Please fill all field." });
        } else {
            const connection = await getConnection();
            sql = `CALL  sp_C_createPhoneContact(
        '${id_contact}',
        '${countryCode}',
        '${dialCode}',
        '${e164number}',
        '${internationalNumber}',
        '${number_c}',
        '${national_number}',
        '${id_adress_contact_type}')`

            const result = await connection.query(sql, (err, rows, fields) => {
                //res.json(result.rows);
                if (err) throw err;
                else {
                    //res.json({status: 'added contact'});
                    res.json(rows[0]);
                }
                sql = ``;
            })
        }
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

//********** Para insertar el email del contacto */
const addContactEmail = async (req, res) => {
    let sql = ''
    try {
        const
            {
                id_contact,
                email_contact,
                id_email_contact_type
            } = req.body
        if (id_contact === undefined || email_contact === undefined || id_email_contact_type === undefined) {
            res.status(400).json({ message: "Bad request. Please fill all field." });
        } else {
            const connection = await getConnection();
            sql = `CALL sp_C_insert_ContactEmail(
                '${id_contact}',
                '${email_contact}',
                '${id_email_contact_type}')`

            const result = await connection.query(sql, (err, rows, fields) => {
                //res.json(result.rows);
                if (err) throw err;
                else {
                    //res.json({status: 'added contact'});
                    res.json(rows[0]);
                }
                sql = ``;
            })
        }
    } catch (error) {
        res.status(500);
        res.send(error.message);
    }
}

//********** Para insertar la direccion del contacto */
const addContactAddress = async (req, res) => {
    let sql = '';
    try {
        const
            {
                id_contact,
                country,
                adress1,
                state_province,
                city,
                county,
                zip_postalcode,
                adress2,
                general_adress,
                id_type_adress,
                adress_contact_latitud,
                adress_contact_longitud
            } = req.body

        if (id_contact === undefined || general_adress === undefined || id_type_adress === undefined) {
            res.status(400).json({ message: "Bad request. Please fill all field." });
        } else {
            const connection = await getConnection();
            sql = `CALL sp_C_insertAdressContact(
                    '${id_contact}',
                    '${country}',
                    '${adress1}',
                    '${state_province}',
                    '${city}',
                    '${county}',
                    '${zip_postalcode}',
                    '${adress2}',
                    '${general_adress}',
                    '${id_type_adress}',
                    '${adress_contact_latitud}',
                    '${adress_contact_longitud}'
                    )`

            const result = await connection.query(sql, (err, rows, fields) => {
                //res.json(result.rows);
                if (err) throw err;
                else {
                    //res.json({status: 'added contact'});
                    res.json(rows[0]);
                }
                sql = ``;
            })
        }
    } catch (error) {

    }
}


//es necesario exporta la funcion para que esta funcione de forma adecuada 
export const methods = {
    getBasicContactsInformationList,
    get_contact_information_byid,
    getTypePhones,
    getSuffixName,
    getPreffixName,
    getEmailsType,
    getAddressType,

    addBasicContactInformation,
    addContactPhone,
    addContactEmail,
    addContactAddress,
}