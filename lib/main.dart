import 'package:flutter/material.dart';
import 'navigation/home_page.dart';
import 'navigation/lyrics_page.dart';

void main() {
  runApp(const SongLyricsApp());
}

class SongLyricsApp extends StatelessWidget {
  const SongLyricsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Song Lyrics Display',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: HomePage(),
      routes: {
        '/lyrics': (context) => const LyricsPage(
              title: '',
              lyrics: '',
              audioFile: '',
            ),
      },
    );
  }
}
