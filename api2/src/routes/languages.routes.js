import { Router } from "express";
import { methods as languageController } from "../controllers/language.controller";

const router=Router(); // a a permitir manejar las rutas de nuestro proyecto
// EL GET GENERAL
router.get("/",(languageController.getLanguages));
// EL GET POR ID 
router.get("/:id",(languageController.getLanguage));


//para el post 
router.post("/",(languageController.addLanguages));

/* router.get("/",(req, res)=>{
    res.send("Jetty");
}); */

export default router;