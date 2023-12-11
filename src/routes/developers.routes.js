import {Router} from 'express';
import { getDeveloper, getDevelopers } from '../controllers/developers.controller.js';

const router = Router();

router.get('/developers', getDevelopers);



router.get('/developers/:id', getDeveloper);
export default router;
