import express from "express"
import morgan from "morgan"

 //routes
 import languageRoutes from "./routes/languages.routes";
 import contactRoutes from "./routes/contacts.routes";

 const app=express();


//settings para el puerto por el que va a funcionar 
app.set("port", 3000);

//middlewares => funcion entre una peticion y una respuesta
app.use(morgan("dev"));
app.use(express.json()); // para que reconosca ingreso de archivos tipo json


//routes
//app.use(languageRoutes);

//app.use("/crm_api/languages",languageRoutes);
app.use("/crm_api/contacts", contactRoutes);
export default app;  