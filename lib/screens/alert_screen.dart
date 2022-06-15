import 'package:flutter/material.dart';


// se recomienda trabar mas con stateless
class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      // cerrar dialogo en la sombra o parte de afuera
      // barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('title'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          content: Column(
            // hacemos que la columna no ocupe toda la alerta
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('content'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100)
            ],
          ),

          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar')
            )
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

         child: ElevatedButton(

           child: const Padding(

            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10
            ),

            child: Text(
              'Mostrar alerta',
              style: TextStyle(
                fontSize: 18
              ),
            ),

           ),


           // Plataform.isAndroid
           // libreria dart.ios
           // para saber en que plataforma estoy
           onPressed: () => displayDialog(context),

         ),
      ),


      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}