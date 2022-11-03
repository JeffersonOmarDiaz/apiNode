import { Router } from "express";
import { methods as contactController } from "../controllers/contacts.controller";

const router=Router(); // a a permitir manejar las rutas de nuestro proyecto

/******************************* PARA LOS METODOS GET********************* */
//*    -------------- listado de los contactos 
router.get("/g_contacts_information_list",(contactController.getBasicContactsInformationList));

//*** detalle del cliente seleccionado mediante el id *
router.get('/g_contact_information_byid' + '/:id',(contactController.get_contact_information_byid));

// obtiene los tipos de telefonos como: home, mobil, etc
router.get("/g_t_phones",(contactController.getTypePhones));

// obtiene los tipos de sufijos como: law, medical... etc
router.get("/g_suffix_name",(contactController.getSuffixName));

// obtiene los prefijos: MR, miss, etc
router.get("/g_preffix_name",(contactController.getPreffixName));

 // obtiene los tipos de emails como: home, mobil, etc
router.get("/g_t_emails",(contactController.getEmailsType));

// obtiene los tipos de edi como: home, mobil, etc
router.get("/g_t_adress",(contactController.getAddressType)); 
//router.get("/g_t_emails",(contactController.getLanguages));


/********************************************* PARA LOS METODOS POST ******************* */
/******************* para insertar un nuevo contacto  */
router.post("/i_basic_contact_information", (contactController.addBasicContactInformation));

/******************* para insertar un nuevo numero de telefono dirijido al contacto */
router.post("/i_contact_phone", (contactController.addContactPhone));

/******************* para insertar una nueva direccion dirijida al contacto */
router.post("/i_contact_email", (contactController.addContactEmail));

/******************* para insertar un nuevo email dirijido al contacto */
router.post("/i_contact_address", (contactController.addContactAddress));

export default router;