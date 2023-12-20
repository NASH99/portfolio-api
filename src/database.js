import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

//Pool de conexiones a la base de datos importando variables de entorno desde el archivo config.js
export const pool = mysql.createPool({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT,
    database: process.env.DB_DATABASE
}).promise()

export const getDevelopers = async (req,res) => {
    const  [rows]  = await pool.query('select * from Developers');
    return rows;
}
export async function getDeveloper(id){
    const  [rows]  = await pool.query(`select * from Developers where DeveloperId = ?`, [id])
    return rows[0];
}

export const getProyects = async (req,res) => {
    const  [rows]  = await pool.query('select * from proyects');
    return rows
}
export async function getProyect(id){
    const  [rows]  = await pool.query(`select * from Proyects where ProyectId = ?`, [id])
    return rows[0]
}

