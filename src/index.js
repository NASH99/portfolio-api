import express from "express";
import developerRoutes from "./routes/developers.routes.js";

import { getDevelopers } from "./controllers/developers.controller.js";
import { getProyect } from "./controllers/proyects.controller.js";

const app = express();
const router = express.Router();

app.use(express.json());


router.get("/developers", async (req, res) => {
    const developers = await getDevelopers()
    res.json(developers)
});


router.get("/proyect/:id", async (req, res) => {
    const ProyectId = req.params.id;
    const proyects = await getProyect(ProyectId)
    res.json(proyects)
});


//RUTA RELATIVA POR DEFECTO DE API
app.use('/api', router);

/*
app.get("/developers/:id", async (req, res) =>{
    const DeveloperId = req.params.id;
    const Developer = await getDeveloper(DeveloperId);
    res.json(Developer);
})

app.get("/proyects", async (req, res) => {
    const proyects = await getProyects()
    res.json(proyects)
});
app.get("/proyects/:id", async (req, res) =>{
    const ProyectId = req.params.id;
    const Proyects = await getProyect(ProyectId);
    res.json(Proyects);
})
*/


app.use((err, req, res, next)=>{
    console.log(err.stack)
    res.status(500).send('Something broke!')
})

app.listen(3000, ()=>{
    console.log('server is running')
})



