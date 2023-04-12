// ignore_for_file: deprecated_member_use

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("XyloPhone App"),
        ),
        body: const XyloPhone(),
      ),
    ),
  );
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  State<XyloPhone> createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {
  final assetsAudioPlayer = AssetsAudioPlayer();

  void sound(int noteNumber) {
    AssetsAudioPlayer.newPlayer().open(Audio("assets/note$noteNumber.wav"));
  }

  Expanded buildKeys({Color? colorkey, required int notenumber}) {
    return Expanded(
      child: FlatButton(
        color: colorkey,
        onPressed: () {
          sound(notenumber);
        },
        child: Text('$notenumber'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildKeys(colorkey: Colors.red, notenumber: 1),
          buildKeys(colorkey: Colors.orange, notenumber: 2),
          buildKeys(colorkey: Colors.yellow, notenumber: 3),
          buildKeys(colorkey: Colors.green, notenumber: 4),
          buildKeys(colorkey: Colors.teal, notenumber: 5),
          buildKeys(colorkey: Colors.blue, notenumber: 6),
          buildKeys(colorkey: Colors.purple, notenumber: 7),
        ],
      ),
    );
  }
}
