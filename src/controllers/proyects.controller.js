import { pool } from '../database.js'

export const getProyects = async (req,res) => {
    const  [rows]  = await pool.query('select * from proyects');
    return rows
}
export async function getProyect(id){
    const  [rows]  = await pool.query(`select * from ImgProyects INNER JOIN Proyects ON ImgProyects.ProyectId = Proyects.ProyectId where DeveloperId = ?;`, [id])
    return rows
}