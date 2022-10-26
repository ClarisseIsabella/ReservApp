import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class TelaAcesso2 extends StatefulWidget {
  const TelaAcesso2({Key? key}) : super(key: key);

  @override
  State<TelaAcesso2> createState() => TelaAcesso2State();
}
final dropValue = ValueNotifier('');

final itemsLista = [
  'Administrador',
  'Professor',
  'Servidor',
];
String? selectedValue;

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: dropValue,
            builder: (BuildContext context, String value, _) {
              return DropdownButton2<String>(
                hint: const Text("Acesse sua área"),
                value: (value.isEmpty) ? null : value,
                onChanged: (escolha) => dropValue.value = escolha.toString(),
                items: itemsLista.map((op) =>
                    DropdownMenuItem(
                      value: op,
                      child: Text(op),
                    )
                ).toList(),
              );
            }),
      )
  );

}

class TelaAcesso2State extends State<TelaAcesso2> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            ]
        )


    );
  }
}
