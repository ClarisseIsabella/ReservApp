import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
            padding: EdgeInsets.only(
              top: 70,
              left: 40,
              right: 40,
            ),

            color: Color(0xFFB7D2DE),
            child: ListView(
              children:<Widget> [
                SizedBox(
                  width: 240,
                  height: 240,
                  child: Image.asset("assets/agendaInicio.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    labelStyle: TextStyle(
                      color: Color(0xFF104079),
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(
                      color: Color(0xFF104079),
                      //0xFF104079
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    )
                  ),
                  style: TextStyle(fontSize: 18),
                ),
                Container(
                  height: 40,
                  alignment: Alignment.center,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    child: Text(
                      "Esqueci minha senha",
                      textAlign: TextAlign.right,
                    ),
                    onPressed: () {  },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3,1],
                      colors: [
                        Color(0xFF66B1E1),
                        Color(0xFF1A7CC2),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SizedBox.expand(
                    child: TextButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Entrar",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                          ),
                        ],
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ),
              ],
          )
      ),
    );
  }
}
