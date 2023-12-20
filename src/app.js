import express from "express";
import { getDevelopers, getDeveloper , getProyects, getProyect} from "./database.js";
import { getTechnologies } from "./controllers/technologies.controller.js";

const app = express();

app.get("/developers", async (req, res) => {
    const developers = await getDevelopers()
    res.json(developers)
});
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

app.get("/technologies/:id", async (req, res) =>{
    const TechnologiesId = req.params.id;
    const Technologies = await getTechnologies(TechnologiesId);
    res.json(Technologies);
})

app.use((err, req, res, next)=>{
    console.log(err.stack)
    res.status(500).send('Something broke!')
})

app.listen(3000, ()=>{
    console.log('server is running')
})