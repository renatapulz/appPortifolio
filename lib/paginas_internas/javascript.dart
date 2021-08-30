import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Imagens {
  final String nome;
  final String picture;
  final String texto;

  Imagens(this.nome, this.picture, this.texto);
}

class Javascript extends StatefulWidget {
  @override
  _JavascriptState createState() => _JavascriptState();
}

class _JavascriptState extends State<Javascript> {
  final imagens = <Imagens>[
    Imagens('Projeto Soul Calc', 'imagens/javascript/js1.png', 'Função que controla o tamanho do texto e slider.'),
    Imagens('Projeto Soul Calc', 'imagens/javascript/js2.png', 'Função que faz o dark mode(tema escuro) e o início da conversão.'),
    Imagens('Projeto Soul Calc', 'imagens/javascript/js3.png', 'Funções de conversão (temperatura e moeda).'),
    Imagens('Projeto Soul Calc', 'imagens/javascript/js4.png', 'Função da calculadora'),
    Imagens('Projeto Soul Calc', 'imagens/javascript/js5.png', 'Função da calculadora'),
    Imagens('Projeto Soul Calc', 'imagens/javascript/js6.png', 'Função da calculadora'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JAVASCRIPT'),
      ),
      body: Center(
        child: CarouselSlider(
          items: imagens
              .map(
                (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      e.picture,
                      width: 450,
                      height:550,
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
                ),
              )
              .toList(),
          options: CarouselOptions(
            height: 950,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            autoPlay: true,
          ),
        ),
      ),
    );
  }
}
