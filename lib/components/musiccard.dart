import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    Key? key,
    required this.name,
    required this.place,
    required this.cost,
    required this.image,
  }) : super(key: key);

  final String name, place, cost, image;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //alignment: Alignment.centerLeft,
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
          //shape: BoxShape.circle,
        ),
        height: 275,
        width: 225,
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
            Container(
                height: 85,
                width: 225,
                color: Colors.white,
                child: ElevatedButton(
                    onPressed: () {
                      //;
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                name,
                                style: const TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                place,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                cost,
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 91, 117, 240),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 5),
                              child: const Text(
                                '/person',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                            ),
                          ],
                        )
                      ],
                    )))
          ],
        ));
  }
}
