import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ReactNative extends StatefulWidget {
  @override
  _ReactNativeState createState() => _ReactNativeState();
}

class _ReactNativeState extends State<ReactNative> {
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
      'imagens/reactnative/react1.mov',
    );
    //VIDEO2
    _controller2 = VideoPlayerController.asset(
      'imagens/reactnative/react2.MP4',
    );
    //VIDEO3
    _controller3 = VideoPlayerController.asset(
      'imagens/reactnative/react3.mov',
    );
    //VIDEO4
    _controller4 = VideoPlayerController.asset(
      'imagens/reactnative/react4.MP4',
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
        title: Text('REACT NATIVE'),
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
                          aspectRatio: 9/14,
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
                      'SoulHealth',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'App criado para trazer notícias, calcular o IMC e links para outras páginas.',
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
                          aspectRatio: 9/14,
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
                      'App Agenda',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'Feito carrossel, formulário e integração com o Firebase.',
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
                          aspectRatio: 9/14,
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
                      'App de calculadora.',
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
                    future: _initializeVideoPlayerFuture4,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        // If the VideoPlayerController has finished initialization, use
                        // the data it provides to limit the aspect ratio of the video.
                        return AspectRatio(
                          aspectRatio: 9/14,
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
                      'Moto App',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: Text(
                      'Página desenvolvida em grupo, integrada ao Firebase e usando a geolocalização.',
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
