import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import './my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';
import 'menu_lateral/collapsin_navigation_drawer.dart';


class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

abrirUrl() async {
  const url = 'https://www.linkedin.com/in/renata-pulz-781aa2191/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Erro ao entrar na página';
  }
}

abrirWhatsApp() async {
  final link = WhatsAppUnilink(
    phoneNumber: '+55-(048)988510827',
  );
  await launch('$link');
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


class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          elevation: 0,
         title: Text('Portifólio'),
       ),
        body: Stack(
          children: [
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 75,
                          backgroundColor: Color(0xFFF037A5),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('imagens/imgperfil.jpeg'),
                            radius: 70,
                          ),
                        ),
                        Text(
                          'Renata Pulz',
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'PermanentMarker',
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Text(
                          'Estudante Front-End / Mobile',
                          style: TextStyle(
                              color: Color(0xFFF8F8F8),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'SourceSansPro',
                              fontSize: 18,
                              letterSpacing: 1.5),
                        ),
                        SizedBox(
                          height: 25,
                          width: 280,
                          child: Divider(
                            color: Color(0xFFF8F8F8),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Color(0xFFF8F8F8),
                          margin: EdgeInsets.fromLTRB(70, 0, 30, 0),
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
                        SizedBox(height: 20),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          color: Color(0xFFF8F8F8),
                          margin: EdgeInsets.fromLTRB(70, 0, 30, 0),
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
                        Center(
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                            child: Lottie.network('https://assets7.lottiefiles.com/private_files/lf30_cuqnb4it.json',
                              width: 300,
                              height: 300,

                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            CollapsingNavigationDrawer(),
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          MyFlutterApp.whatsapp,
        size: 40,
        ),
        onPressed: () {
          abrirWhatsApp();
        },
      ),
    );
  }
}
