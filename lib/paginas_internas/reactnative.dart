import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Imagens {
  final String nome;
  final String picture;
  final String texto;

  Imagens(this.nome, this.picture, this.texto);
}

class ReactNative extends StatefulWidget {
  @override
  _ReactNativeState createState() => _ReactNativeState();
}

class _ReactNativeState extends State<ReactNative> {
  final imagens = <Imagens>[
    Imagens('um', '../imagens/html/foto1.jpg',
        'skcnsvbdjbv vasmvksdjvndskvksdvkdsnvkdsnvnivnjdncjsabjbshb ajsbjsahb jabj '),
    Imagens('dois', '../imagens/html/foto2.png',
        'skcnsvbdjbv vasmvksdjvndskvksdvkdsnvkdsnvnivnjdncjsabjbshb ajsbjsahb jabj '),
    Imagens('três', '../imagens/html/foto3.jpeg',
        'skcnsvbdjbv vasmvksdjvndskvksdvkdsnvkdsnvnivnjdncjsabjbshb ajsbjsahb jabj '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REACT NATIVE'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imagens
              .map((e) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Image.network(
                          e.picture,
                          width: 180,
                          height: 180,
                        ),
                      ),
                      Text(e.nome,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                      Text(e.texto,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ],
                  ))
              .toList(),
          options: CarouselOptions(
            height: 800,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
