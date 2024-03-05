import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
// Importa tus clases AuthRepository y AuthenticationBloc
import 'package:sprint/bloc/register_bloc.dart';
import 'package:sprint/repository/register_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sprint/data/odoo_connect.dart';
import '../model/language.dart';
import '../model/user.dart';
import 'package:sprint/screens/home_screen.dart';
import 'dart:math';

import 'dart:math';
import 'package:flutter/material.dart';
// Importa tus propios paquetes y archivos necesarios aquí, como RegisterBloc, SendPasswordlessEmail, User, OdooConnect, Language, HomeScreen, etc.

class RegisterScreen extends StatefulWidget {
 const RegisterScreen({super.key});

 @override
 _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
 final TextEditingController _emailController = TextEditingController();

 void _popRegistroOdoo() {
  showDialog(
   context: context,
   builder: (context) {
    return AlertDialog(
     title: const Text('Registro sin contraseña'),
     content: TextField(
      controller: _emailController,
      decoration: const InputDecoration(
       hintText: 'Introduce tu correo electrónico',
      ),
      keyboardType: TextInputType.emailAddress,
     ),
     actions: <Widget>[
      TextButton(
       child: const Text('Cancelar'),
       onPressed: () {
        Navigator.of(context).pop();
       },
      ),
      TextButton(
       child: const Text('Enviar'),
       onPressed: () {
        // Asumiendo que tienes un BLoC o alguna lógica similar para manejar eventos
        // context.read<RegisterBloc>().add(SendPasswordlessEmail(_emailController.text));
        _showPasswordlessRegisterDialog();
       },
      ),
     ],
    );
   },
  );
 }

 void _showPasswordlessRegisterDialog() {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final String randomPassword = generateRandomPassword(12);

  showDialog(
   context: context,
   builder: (context) {
    return AlertDialog(
     title: const Text('Registro sin contraseña'),
     content: SingleChildScrollView(
      child: ListBody(
       children: <Widget>[
        TextField(
         controller: _emailController,
         decoration: const InputDecoration(
          hintText: 'Introduce tu correo electrónico',
         ),
         keyboardType: TextInputType.emailAddress,
        ),
        TextField(
         controller: _usernameController,
         decoration: const InputDecoration(
          hintText: 'Introduce tu nombre de usuario',
         ),
        ),
        Padding(
         padding: const EdgeInsets.only(top: 8.0),
         child: Text('Tu contraseña generada: $randomPassword'),
        ),
        // Agrega aquí más campos si son necesarios
       ],
      ),
     ),
     actions: <Widget>[
      TextButton(
       child: const Text('Cancelar'),
       onPressed: () {
        Navigator.of(context).pop();
       },
      ),
      TextButton(
       child: const Text('Enviar'),
       onPressed: () async {
        // Aquí va tu lógica para crear un usuario, asumiendo que tienes una clase User y una función createUser
        Navigator.of(context).pop(); // Cierra el diálogo
        // Muestra mensaje de éxito o error
       },
      ),
     ],
    );
   },
  );
 }

 String generateRandomPassword(int length) {
  const String _chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  Random _rnd = Random();
  return List.generate(length, (index) => _chars[_rnd.nextInt(_chars.length)]).join();
 }

 @override
 Widget build(BuildContext context) {
  return Scaffold(
   appBar: AppBar(
    title: const Text('Registro'),
    centerTitle: true,
   ),
   body: Center(
    child: Padding(
     padding: const EdgeInsets.all(16.0),
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
       TextFormField(
        decoration: const InputDecoration(
         icon: Icon(Icons.person),
         hintText: 'Introduce tu nombre de usuario',
         labelText: 'Nombre de usuario',
        ),
       ),
       TextFormField(
        obscureText: true,
        decoration: const InputDecoration(
         icon: Icon(Icons.lock),
         hintText: 'Introduce tu contraseña',
         labelText: 'Contraseña',
        ),
       ),
       Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
         onPressed: () {
          // Aquí va la lógica de registro
         },
         child: const Text('Registro'),
        ),
       ),
       Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: ElevatedButton(
         onPressed: _popRegistroOdoo,
         child: const Text('Registro sin contraseña'),
        ),
       ),
      ],
     ),
    ),
   ),
  );
 }

 @override
 void dispose() {
  _emailController.dispose();
  super.dispose();
 }
}


