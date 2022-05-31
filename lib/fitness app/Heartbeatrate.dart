import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: Heart(),
));

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  State createState() => _HomeState();
}

class _HomeState extends State<Heart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Heart Rate',
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
                margin: const EdgeInsets.only(top: 100, left: 10),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(10, 10),
                        color: Colors.white.withOpacity(1),
                        blurRadius: 10,
                        spreadRadius: 0,
                      ),
                    ],
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('fitness/heart rate.jpg'),
                    )),
              ),
              onTap: () {
                print('Measuring Heart Rate');
              },
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, top: 20, bottom: 50),
              height: 40,
              width: 80,
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
                        text: 'b',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: 'p',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                      TextSpan(
                        text: 'm',
                        style: TextStyle(
                          color: Colors.purple,
                          fontSize: 20,
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
                          radius: 4,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '72',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: 'b',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'p',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'm',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
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
                    const Text('Resting'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.yellow,
                          radius: 4,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '45-100',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: 'b',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'p',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'm',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
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
                    const Text('Exercise'),
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                          radius: 4,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '>100',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: 'b',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'p',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'm',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
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
                          radius: 4,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 4),
                          child: RichText(
                            text: const TextSpan(
                              text: '>220',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple,
                              ),
                              children: [
                                TextSpan(
                                  text: 'b',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'p',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
                                  ),
                                ),
                                TextSpan(
                                  text: 'm',
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: 10,
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
