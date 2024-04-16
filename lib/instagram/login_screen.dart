import 'package:flutter/material.dart';
import 'package:instagram_app/instagram/register_screen.dart';

import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  //Widget para la generación del formulario de logueo
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: Text(
            'Español',
            style: TextStyle(color: Colors.white),
          ))),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ))),
          Expanded(
              flex: 4,
              child: Column(
                children: [
                  Container(
                      height: 60,
                      width: 180,
                      child: Image(
                        image: AssetImage('assets/img/logo.png'),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      fillColor: Colors.grey.shade700,
                      prefixIconColor: Colors.white,
                      filled: true,
                      constraints:
                          BoxConstraints.tightFor(width: 327, height: 50),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Numero celular, correo o nombre de usuario',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11)),
                      fillColor: Colors.grey.shade700,
                      prefixIconColor: Colors.white,
                      filled: true,
                      constraints:
                          BoxConstraints.tightFor(width: 327, height: 50),
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: 'Contraseña',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MainScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 327,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Olvidaste tu contraseña? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Recuperar.",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "No tienes una cuenta? ",
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    " Registrarse",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
