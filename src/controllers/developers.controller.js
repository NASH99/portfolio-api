import { pool } from '../database.js'

export const getDevelopers = async (req,res) => {
    const  [rows]  = await pool.query('select * from Developers');
    return rows;
}
export async function getDeveloper(id){
    const  [rows]  = await pool.query(`select * from Developers where DeveloperId = ?`, [id])
    return rows[0];
}