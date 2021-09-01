import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../my_flutter_app_icons.dart';
import 'package:ionicons/ionicons.dart';
import 'meta.dart';

class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'renatadpulz@gmail.com',
    query: 'subject=Mensagem&body=Olá Renata!!',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Erro ao acessar o email $url');
  }
}

abrirUrl() async {
  const url = 'https://www.linkedin.com/in/renata-pulz-781aa2191/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Erro ao entrar na página';
  }
}

abrirInsta() async {
  const url = 'https://www.instagram.com/renatapulz/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Erro ao entrar na página';
  }
}

abrirGit() async {
  const url = 'https://github.com/renatapulz';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Erro ao entrar na página';
  }
}

class _UsuarioState extends State<Usuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PERFIL'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0) ,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Meta()),
                    );
                  },
                  child: Hero(
                      tag: "profile-image",
                      child: Image(
                        width: 150,
                        height: 100,
                        image:NetworkImage(
                          "https://eucontador.com.br/wp-content/uploads/2015/11/metas-02.jpg",
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  'Fique a vontade para entrar em contato!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xFFF8F8F8),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: new InkWell(
                  onTap: () {
                    abrirUrl();
                  },
                  child: ListTile(
                    leading: Tab(
                      icon: Icon(
                        MyFlutterApp.linkedin,
                        size: 25,
                        color: Color(0xFFF037A5),
                      ),
                    ),
                    title: Text(
                      'Renata Pulz',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Color(0xFFF037A5),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xFFF8F8F8),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: new InkWell(
                  onTap: () {
                    abrirGmail();
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 30,
                      color: Color(0xFFF037A5),
                    ),
                    title: Text(
                      'renatadpulz@gmail.com',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Color(0xFFF037A5),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xFFF8F8F8),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: new InkWell(
                  onTap: () {
                    abrirInsta();
                  },
                  child: ListTile(
                    leading: Tab(
                      icon: Icon(
                        Ionicons.logo_instagram,
                        size: 32,
                        color: Color(0xFFF037A5),
                      ),
                    ),
                    title: Text(
                      'renatapulz',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Color(0xFFF037A5),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xFFF8F8F8),
                margin: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 5,
                ),
                child: new InkWell(
                  onTap: () {
                    abrirGit();
                  },
                  child: ListTile(
                    leading: Tab(
                      icon: Icon(
                        Ionicons.logo_github,
                        size: 32,
                        color: Color(0xFFF037A5),
                      ),
                    ),
                    title: Text(
                      'Renata Pulz',
                      style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontSize: 18,
                        color: Color(0xFFF037A5),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(
                      width: 100,
                      height: 100,
                      image: AssetImage('imagens/soulcode.png')),
                ),
                onTap: () => launch('https://soulcodeacademy.org/'),
              ),
            ],
          ),
        ));
  }
}
