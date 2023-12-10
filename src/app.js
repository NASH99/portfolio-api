import express from "express";
import { getDevelopers , getProyects, getProyect} from "./database.js";

const app = express();

app.get("/developers", async (req, res) => {
    const developers = await getDevelopers()
    res.json(developers)
});

app.get("/proyects", async (req, res) => {
    const proyects = await getProyects()
    res.json(proyects)
});

app.get("/proyects/:id", async (req, res) =>{
    const ProyectId = req.params.id;
    const Proyects = await getProyect(ProyectId);
    res.json(Proyects);
})

app.use((err, req, res, next)=>{
    console.log(err.stack)
    res.status(500).send('Something broke!')
})

app.listen(3000, ()=>{
    console.log('server is running')
})