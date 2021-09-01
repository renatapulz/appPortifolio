import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Meta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Hero(
            tag: "profile-image",
            child: Container(
              width: double.infinity,
              height: 260,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://eucontador.com.br/wp-content/uploads/2015/11/metas-02.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Text(
              'Permanecer em contínuo processo de aprendizagem, fazer a transição de carreira e entrar na área da Tecnologia da Informação, retomar o inglês e começar uma faculdade (também na área).',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(
            height: 40,
           ),
          Center(
            child: Lottie.network(
              'https://assets2.lottiefiles.com/packages/lf20_44gjzh9a.json',
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
