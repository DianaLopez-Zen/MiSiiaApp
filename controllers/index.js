const pool = require('../database');
const {isLoggedIn} = require('../lib/auth');
const controller = {};

controller.Visual = async(req, res) => {
	pool.query('SELECT materia.cve_maestro, nombre_mat, grupo, horario, aula, cve_carrera')
}