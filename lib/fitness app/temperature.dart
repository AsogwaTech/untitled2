import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      // ignore: prefer_const_constructors
      home: Temp(),
    ));

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
            'Temperature',
          style: TextStyle(
            color: Colors.grey
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.purple,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.purple,
              )),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: Column(
          children: [
            /*Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                //color: Colors.purple,
                image: DecorationImage(
                  image: AssetImage('fitness/Temperature Measurement-amico (1).png'),
                ),
              ),
            ),*/
            InkWell(
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 40),
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(10, 10),
                        color: Colors.black.withOpacity(0.01),
                        blurRadius: 0.0,
                        spreadRadius: 0,
                      ),
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('fitness/low-temperature.png'),
                    )),
              ),
              onTap: () {
                print('Measuring Temperature');
              },
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 20, bottom: 50),
              height: 40,
              width: 40,
              //color: Colors.green,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  text: const TextSpan(
                    text: '0',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    children: [
                      TextSpan(
                        text: '0',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: 'c',
                        style: TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text('Avg'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          radius: 6,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '37',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'c',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Min'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 6,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '35',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'c',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Max'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 6,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '38',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'c',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text('Danger'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 6,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '>38',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: '0',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'c',
                                  style: TextStyle(
                                    color: Colors.purple,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconSize: 28,
        selectedFontSize: 0,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        selectedItemColor: Colors.black,
        items:  [
          BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.purple,
                  ),
                  child: const Icon(
                    Icons.home,
                    color: Colors.grey,
                  ),
                ),
              ),
              label: 'Home',
          ),
           BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.only(right: 35),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.purple,
                  ),
                  child: const Icon(
                    Icons.book_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              label: 'journal',
          ),
           BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.purple,
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.grey,
                  ),
                ),
              ),
              label: 'Settings',
          ),
           BottomNavigationBarItem(
              icon: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(right: 30),
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    //color: Colors.purple,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              ),
              label: 'profile',
          ),
        ],
      ),
    );
  }
}
