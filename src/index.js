import express from "express";

import { getDevelopers } from "./controllers/developers.controller.js";
import { getProyect } from "./controllers/proyects.controller.js";
import { getTechnologies } from "./controllers/technologies.controller.js";

import dotenv from 'dotenv';
dotenv.config();

const app = express();
const router = express.Router();

app.use(express.json());

//CORS
app.use(function(req, res, next) {
    res.setHeader('Access-Control-Allow-Origin', '*');
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE');
    res.setHeader('Access-Control-Allow-Headers', 'Content-Type');
    res.setHeader('Access-Control-Allow-Credentials', true);
    next();
});

const PORT = process.env.PORT;

router.get("/developers", async (req, res) => {
    const developers = await getDevelopers()
    res.json(developers)
});


router.get("/proyect/:id", async (req, res) => {
    const ProyectId = req.params.id;
    const proyects = await getProyect(ProyectId)
    res.json(proyects)
});

router.get("/technologies/:id", async (req, res) =>{
    const TechnologiesId = req.params.id;
    const Technologies = await getTechnologies(TechnologiesId);
    res.json(Technologies);
})


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

app.listen(PORT, ()=>{
    console.log('server is running on port: '+ PORT)
})



