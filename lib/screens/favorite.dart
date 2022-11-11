import 'package:flutter/material.dart';
import 'package:travel_app/components/grouptours.dart';
import 'package:travel_app/components/musiccard.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: const Color.fromARGB(255, 91, 117, 240),
            icon: const Icon(Icons.list_outlined),
            onPressed: () {},
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Color.fromARGB(255, 91, 117, 240),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                'Start enjoying exploring your dream vocation',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20, top: 0),
              height: 50,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(children: <Widget>[
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_outlined,
                      color: Color.fromARGB(255, 91, 117, 240),
                    )),
                const Text('search...'),
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
              child: Row(
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 91, 117, 240)),
                    ),
                    onPressed: () {},
                    child: const Text('All Travels'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 91, 117, 240)),
                    ),
                    child: const Text('Mountains'),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 91, 117, 240)),
                    ),
                    child: const Text('Lakes'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Container(
              height: 275,
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  MusicCard(
                      name: 'Golden Gate',
                      place: 'California, USA',
                      cost: '€250',
                      image: 'assets/images/greece.jpg'),
                  MusicCard(
                      name: 'Big Ben',
                      place: 'London, GB',
                      cost: '€320',
                      image: 'assets/images/london.jpg'),
                  MusicCard(
                      name: 'Eiffel Tower',
                      place: 'Paris, FR',
                      cost: '€170',
                      image: 'assets/images/france.jpg'),
                  MusicCard(
                      name: 'Golden Gate',
                      place: 'California, USA',
                      cost: '€250',
                      image: 'assets/images/greece.jpg'),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Row(children: [
                const Text(
                  'Group Tours',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5, left: width * 0.45),
                  child: const Text(
                    'See All',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ]),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [GroupTours(), GroupTours(), GroupTours()]),
            )
          ]),
        ));
  }
}
