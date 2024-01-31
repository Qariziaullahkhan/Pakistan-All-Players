import 'package:flutter/material.dart';
import 'package:flutter_application_12/models/players.dart';

class PlayersDetailScree extends StatelessWidget {
  final Players players;
  const PlayersDetailScree({super.key, required this.players});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.4,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Players Detail",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: EdgeInsets.all(10.0)),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              image: DecorationImage(image: AssetImage(players.images)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Card(
          //   child: Image(
          //     image: AssetImage(players.images),
          //   ),

          //   //   color: Colors.red,
          // ),
          // Image(image: AssetImage(players.images)),
          Text(
            players.name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            players.role,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            players.country,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
