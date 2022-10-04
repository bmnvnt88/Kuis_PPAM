import 'package:flutter/material.dart';
import 'package:kuis/game_store.dart';
import 'package:kuis/detailPage.dart';

class Beranda extends StatelessWidget {
  // const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          final GameStore game = gameList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(game: game);
              }));
            },
            splashColor: Color(0xffb84d4d),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Image.network(
                      game.imageUrls[0],
                      width: 300,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      game.name,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      game.price,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          );
        },
        itemCount: gameList.length,
      ),
    );
  }
}
