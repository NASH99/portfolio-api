import { pool } from '../database.js'

export async function getTechnologies(id){
    const  [rows]  = await pool.query(`select * from Technologies where DeveloperId = ?`, [id])
    return rows;
}