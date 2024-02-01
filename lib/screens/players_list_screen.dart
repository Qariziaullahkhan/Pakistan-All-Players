import 'package:flutter/material.dart';
import 'package:flutter_application_12/datastore/data_stores.dart';
import 'package:flutter_application_12/models/players.dart';
import 'package:flutter_application_12/screens/players_screen.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          "Listview Builder",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Expanded(
        child: ListView.builder(
            //scrollDirection: Axis.vertical,
            itemCount: Datasore().players.length,
            itemBuilder: (BuildContext context, int index) {
              Players players = Datasore().players[index];
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(players.images),
                  ),
                  title: Text(
                    players.name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    players.role,
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  trailing: Text(
                    players.role,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PlayersDetailScree(players: players);
                    }));
                  },
                ),
              );
            }),
      ),
    );
  }
}
     // return ListTile(
            //   leading: CircleAvatar(
            //     radius: 30,
            //     backgroundImage: AssetImage(
            //       players.images,
            //     ),
            //   ),
            //   title: Text(
            //     players.name,
            //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            //   ),
            //   subtitle: Text(
            //     players.role,
            //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            //   ),
            //   trailing: Text(
            //     players.country,
            //     style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            //   ),
            // );
            // Image.asset(
            //   players.images,
            //   width: 150,
            //   height: 150,
            //   fit: BoxFit.cover,
            // ),
            // const SizedBox(
            //   width: 20,
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text(
            //       players.name,
            //       style: TextStyle(
            //           fontSize: 15, fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       players.role,
            //       style: TextStyle(
            //           fontSize: 15, fontWeight: FontWeight.bold),
            //     ),
            //     Text(
            //       players.country,
            //       style: TextStyle(
            //           fontSize: 15, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),