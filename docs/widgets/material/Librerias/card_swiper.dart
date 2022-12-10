/*import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class SwiperCards extends StatelessWidget {
  // Primero ejecutamos flutter pub add card_swiper

  final List items;

  const SwiperCards({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final double alto = screenSize.height;
    final double ancho = screenSize.width;

    return Swiper(
      itemWidth: ancho * 0.7, // necesario para el layout, ancho del child
      itemHeight: alto * 0.5, // necesario para el layout, alto del child
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              placeholder: const AssetImage("public/imagen.jpge"),
              image: NetworkImage(
                  'https://misitio.com/img/${items[index].poster}'),
              fit: BoxFit.cover,
            ));
      },

      pagination: const SwiperPagination(
          builder: SwiperPagination.dots,
          margin: EdgeInsets.all(
              10)), //para los puntos que indican el elemento actual

      control: const SwiperControl(
          color: Colors.black), // Flechas para moverse entre elementos

      autoplay: true, // para que automaticamente pasen los child
      autoplayDelay: 5000, // duracion milisec para cambiar de child
      layout: SwiperLayout.STACK,
    );
  }
}
*/