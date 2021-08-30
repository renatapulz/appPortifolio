import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HtmlCss extends StatefulWidget {
  @override
  _HtmlCssState createState() => _HtmlCssState();
}

class _HtmlCssState extends State<HtmlCss> {
  //VIDEO1
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  //VIDEO2
  late VideoPlayerController _controller2;
  late Future<void> _initializeVideoPlayerFuture2;
  //VIDEO3
  late VideoPlayerController _controller3;
  late Future<void> _initializeVideoPlayerFuture3;
  //VIDEO4
  late VideoPlayerController _controller4;
  late Future<void> _initializeVideoPlayerFuture4;

  @override
  void initState() {
    //VIDEO1
    _controller = VideoPlayerController.asset(
      'imagens/htmlecss/cine.mov',
    );
      //VIDEO2
      _controller2 = VideoPlayerController.asset(
        'imagens/htmlecss/rio.mov',
    );
    //VIDEO3
    _controller3 = VideoPlayerController.asset(
      'imagens/htmlecss/soulcalc.mov',
    );
    //VIDEO4
    _controller4 = VideoPlayerController.asset(
      'imagens/htmlecss/goldbelle.mov',
    );

    //VIDEO1
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    //VIDEO2
    _initializeVideoPlayerFuture2 = _controller2.initialize();
    _controller2.setLooping(true);
    //VIDEO3
    _initializeVideoPlayerFuture3 = _controller3.initialize();
    _controller3.setLooping(true);
    //VIDEO4
    _initializeVideoPlayerFuture4 = _controller4.initialize();
    _controller4.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML e CSS'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            // If the video is paused, play it.
                            _controller.play();
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFFC5CAE9),
                        ),
                      ),
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Text(
                      'Cine SoulCode',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Projeto desenvolvido em Html e Css.',
                      style: TextStyle(fontSize: 16, color: Colors.white),textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture2,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: _controller2.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller2),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (_controller2.value.isPlaying) {
                            _controller2.pause();
                          } else {
                            // If the video is paused, play it.
                            _controller2.play();
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFC5CAE9),
                        ),
                      ),
                      child: Icon(
                        _controller2.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Text(
                      'Sou + Rio',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Página de turismo, desenvolvida em Html e Css. Projeto desenvolvido em grupo.',
                      style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,
                    ),

                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture3,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: _controller3.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller3),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (_controller3.value.isPlaying) {
                            _controller3.pause();
                          } else {
                            // If the video is paused, play it.
                            _controller3.play();
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFC5CAE9),
                        ),
                      ),
                      child: Icon(
                        _controller3.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Text(
                      'Soul Calc',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Projeto desenvolvido em Html, CSS e JavaScript, seguido o modelo do layout, objetivo de conter uma calculadora e uma tabela de conversão (temperatura e moeda).',
                      style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  FutureBuilder(
                    future: _initializeVideoPlayerFuture4,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: _controller4.value.aspectRatio,
                          // Use the VideoPlayer widget to display the video.
                          child: VideoPlayer(_controller4),
                        );
                      } else {
                        // If the VideoPlayerController is still initializing, show a
                        // loading spinner.
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (_controller4.value.isPlaying) {
                            _controller4.pause();
                          } else {
                            // If the video is paused, play it.
                            _controller4.play();
                          }
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFC5CAE9),
                        ),
                      ),
                      child: Icon(
                        _controller4.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 10),
                    child: Text(
                      'Gold Belle',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      'Projeto desenvolvido em Html, CSS e JavaScript para uma loja de jóias e acessórios. Página desenvolvida em grupo.',
                      style: TextStyle(fontSize: 16, color: Colors.white), textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
