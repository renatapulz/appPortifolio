import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Imagens {
  final String nome;
  final String picture;
  final String texto;

  Imagens(this.nome, this.picture, this.texto);
}

class Css extends StatefulWidget {
  @override
  _CssState createState() => _CssState();
}

class _CssState extends State<Css> {
  final imagens = <Imagens>[
    Imagens('um', 'imagens/html/foto1.jpg', 'asdasdas'),
    Imagens('dois', 'imagens/html/foto2.png', 'dfgdfgdfgfdg'),
    Imagens('três', 'imagens/html/foto3.jpeg', 'jksdlk asdkljasd'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSS'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imagens
              .map((e) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        e.picture,
                        width: 400,
                        height: 500,
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
