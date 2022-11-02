import { Router } from "express";
import { methods as contactController } from "../controllers/contacts.controller";

const router=Router(); // a a permitir manejar las rutas de nuestro proyecto
// EL GET GENERAL
router.get("/",(contactController.getLanguages));


export default router;