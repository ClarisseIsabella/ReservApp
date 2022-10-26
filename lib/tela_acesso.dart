import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

const List<String> listaAcesso = <String>['Acesse sua área','Administrador','Professor','Servidor'];

final dropValue = ValueNotifier('');

final itemsLista = [
  'Administrador',
  'Professor',
  'Servidor',
];

class _DropdownButton extends StatefulWidget {
  const _DropdownButton({Key? key}) : super(key: key);

  @override
  State<_DropdownButton> createState() => _DropdownButtonState();
}

class _DropdownButtonState extends State<_DropdownButton> {
  String dropdownValor = listaAcesso.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Color(0xFFB7D2DE),
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          child: ValueListenableBuilder(
              valueListenable: dropValue,
              builder: (BuildContext context, String value, _) {
                return SizedBox(
                    child: DropdownButton2<String>(
                      isExpanded: true,

                      hint: const Text("Acesse sua área"),
                      value: (value.isEmpty) ? null : value,
                      onChanged: (escolha) => dropValue.value = escolha.toString(),
                      items: itemsLista.map((op) =>
                          DropdownMenuItem(
                            value: op,
                            child: Text(op),
                          )
                      ).toList(),

                    )
                );

              }),
        )
    );
  }
}

class TelaAcesso extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(
          top: 150,
          left: 40,
          right: 40,
        ),

        color: Color(0xFFB7D2DE),
        child: Column(
          children: <Widget>[
            Expanded(
                child: Container(
                    height: 240,
                    child: Image.asset("assets/agendaInicio.png"),
                  ),),

            Expanded(
                child: Container(
                  color: Color(0xFFB7D2DE),
                  child: _DropdownButton(),
                )//,
                )
          ],
        ),
      ),
    );
  }
}

