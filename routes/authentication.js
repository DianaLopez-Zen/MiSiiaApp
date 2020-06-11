const express = require('express');
const router = express.Router();

const passport = require('passport');
const { isLoggedIn } = require('../lib/auth');
const pool = require('../database');

// SIGNUP
router.get('/signup', (req, res) => {
  res.render('auth/signup');
});

router.post('/signup', passport.authenticate('local.signup', {
  successRedirect: '/profile',
  failureRedirect: '/signup',
  failureFlash: true
}));

// SINGIN
router.get('/signin', (req, res) => {
  res.render('auth/signin');
});

router.post('/signin', (req, res, next) => {
  req.check('username', 'username is Required').notEmpty();
  req.check('password', 'Password is Required').notEmpty();
  const errors = req.validationErrors();
  if (errors.length > 0) {
    req.flash('message', errors[0].msg);
    res.redirect('/signin');
  }
  passport.authenticate('local.signin', {
    successRedirect: '/profile',
    failureRedirect: '/signin',
    // failureFlash: true
  })(req, res, next);
});

router.get('/logout', (req, res) => {
  req.logOut();
  res.redirect('/');
});

router.get('/profile', isLoggedIn, async (req, res) => {
  
  const materia = await pool.query('SELECT `cve_maestro`, `cve_materia`,`nombre_mat`, `grupo`, `horario`, `aula`, `cve_carrera` FROM `materia`');
  res.render('profile', { materia });
  
});

router.get('/visualizar', isLoggedIn, async (req, res) => {
  
  const alta = await pool.query('SELECT `cve_maestro`, `cve_materia`,`nombre_mat`, `grupo`, `horario`, `aula`, `cve_carrera` FROM `materia`');
  res.render('visualizar', { alta });
  
});

router.post('/profile', isLoggedIn, async (req, res) => {
  console.log(req.body)
  // const { ch2 } = req.body;
  // const newLink = {
  //       id_materia:ch2,
  //       id_usuario: req.user.id
  //   };
  //   await pool.query('INSERT INTO detalle_usuario_materia set ?', [newLink]);
  
  res.render('visualizar');
  
});

module.exports = router;
