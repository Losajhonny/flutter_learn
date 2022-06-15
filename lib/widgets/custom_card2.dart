
import 'package:flutter/material.dart';
import 'package:flutter_learn/theme/app_theme.dart';

class CustomCard2 extends StatelessWidget {

  final String imageUrl;
  final String? name;

  const CustomCard2({Key? key, required this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // sirve para cortar o adecuar contenido
      // si se sale trata de cortarlos
      clipBehavior: Clip.antiAlias,

      // border mas redondeados
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),

      // color de sombra
      shadowColor: AppTheme.primary.withOpacity(0.5),

      // sombra
      elevation: 10,
      child: Column(
        children: [

          // cuando tarda en cargar la imagen
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),

            width: double.infinity,
            height: 230,

            // adaptar en todo el tamaño posible
            fit: BoxFit.fill,

            fadeInDuration: const Duration(milliseconds: 300),
          ),


          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),

              // por si no quiero mostrar nada
              child: Text(name!),
            ),

        ],
      ),
    );
  }
}
