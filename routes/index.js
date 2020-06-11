const express = require('express');
const router = express.Router();
const pool = require('../database');

router.get('/', async (req, res) => {
    res.render('index');
});

router.get('/signup', (req, res) => {
    pool.query('SELECT * FROM carrera', (err, carrera) => {
    	res.render('auth/signup', {
    		carrera : carrera
    		});
    	});
});
router.get('/visualizar',  async(req, res) => {
  res.render('visualizar');
});
router.get('/listado', (req, res) => {
    pool.query('SELECT cve_maestro,nombre_mat,grupo,horario,aula,cve_carrera FROM materia',  (err, materia)=> {
    	res.render('/seleccion', {
    		materia : materia
    	});
    	});
    });
module.exports = router;