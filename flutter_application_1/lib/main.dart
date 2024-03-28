import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MaterialApp(
      home: Contador(),
    )
  );
}

class Contador extends StatefulWidget {
  const Contador({super.key});
  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {

  int contador = 0;

  void increment(){
    setState(() {
      if(contador < 30)
      {
        contador ++;
      }
      
    });
  }

  void decrement(){
    setState(() {
      if(contador > 0)
      {
        contador--;
      }
      
    });
  }

/*
showAlertDialog1(BuildContext context) 
{ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Promoção Imperdivel"),
    content: Text("Não perca a promoção."),
    actions: [
      okButton,
    ],
  );
  // exibe o dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("img/pika.jpg"), fit: BoxFit.cover)),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(contador<30 ?"Pode entrar, linda!":"TÁ CHEIO AAAAAAAAAAAAAAAAAAA", style: TextStyle(fontSize: 30.0, color:  Color.fromARGB(255, 255, 255, 100)), ),
          Text(contador.toString(), style: TextStyle(fontSize: 80.0, color:  Color.fromARGB(255, 255, 255, 100)),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
            children: [
              
             TextButton(
              onPressed: increment,
              child: Text("Entrou", style: TextStyle(fontSize: 20.0, color:  Colors.black)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
                ),
              ),
             SizedBox(width: 64,),
             
             TextButton(
              onPressed: decrement, 
              child: Text("Saiu", style: TextStyle(fontSize: 20.0, color:  Colors.black)),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: Size(100, 100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)
                )
                ),
              )
             ],
            ), 
        ],
      ),)
    );
    
  }
}