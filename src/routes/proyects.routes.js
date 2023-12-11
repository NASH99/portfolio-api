import {Router} from 'express';
import { getProyect, getProyects } from '../controllers/proyects.controller.js';

const router = Router();

router.get('/proyects', getProyects);
router.get('/proyects/:id', getProyect);

export default router;

