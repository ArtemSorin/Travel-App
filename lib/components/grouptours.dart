import 'package:flutter/material.dart';

class GroupTours extends StatelessWidget {
  const GroupTours({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        width: 300,
        height: 150,
        child: Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  //alignment: Alignment.centerLeft,
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/greece.jpg"),
                ),
                //shape: BoxShape.circle,
              ),
              //height: 275,
              width: 125,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0.0,
                shadowColor: Colors.transparent,
                fixedSize: const Size(175, 150),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Blue Sea Beach',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'Star Team',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
          ],
        ));
  }
}
