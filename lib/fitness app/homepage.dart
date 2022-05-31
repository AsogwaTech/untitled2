

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(MaterialApp(
  // ignore: prefer_const_constructors
  home: HomePage(),
));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Hello Christian',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.3),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.calendar_today_rounded,
            color: Colors.purple,
          ),
          onPressed: () {
            print('Opening Calender');
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.analytics_outlined,
                  color: Colors.purple,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, top: 0, bottom: 10),
              child: const CircleAvatar(
                backgroundImage:
                AssetImage('fitness/Training at home-amico.png'),
                radius: 30,
              ),
            ),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                //color: Colors.purple,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(10, 10),
                    color: Colors.purple.withOpacity(0.03),
                  ),
                ],
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('fitness/Fitness stats-bro.png'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: const Text(
                'Let help keep your fitness Data',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 600,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(4.0),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                crossAxisCount: 2,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 0.0,
                            spreadRadius: 0,
                          ),
                          /*BoxShadow(
                              offset: const Offset(-0.01, -0.01),
                              color: Colors.black.withOpacity(0.03),
                            ),*/
                        ],
                        image: const DecorationImage(
                          image: AssetImage('fitness/performance.png'),
                        ),
                      ),
                      child: const Align(
                        child: Text(
                          'SPEED',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 0.0,
                            spreadRadius: 0,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('fitness/blood-pressure-gauge.png'),
                        ),
                      ),
                      child: const Align(
                        child: Text(
                          'BLOOD PRESSURE',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 0.0,
                            spreadRadius: 0,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('fitness/heart rate.jpg'),
                        ),
                      ),
                      child: const Align(
                        child: Text(
                          'HEART RATE',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          //color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(10, 10),
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 0.0,
                              spreadRadius: 0,
                            ),
                          ],
                          image: const DecorationImage(fit: BoxFit.scaleDown,
                            image: AssetImage('fitness/oxygen-saturation.png'),
                          ),
                        ),
                        child: const Align(
                          child: Text(
                            'BLOOD OXYGEN',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                      onTap: (){
                        Modular.to.navigate('/second');
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 0.0,
                            spreadRadius: 0,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('fitness/bicycle.png'),
                        ),
                      ),
                      child: const Align(
                        child: Text(
                          'CYCLING SPEED',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(10, 10),
                            color: Colors.black.withOpacity(0.03),
                            blurRadius: 0.0,
                            spreadRadius: 0,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage('fitness/low-temperature.png'),
                        ),
                      ),
                      child: const Align(
                        child: Text(
                          'TEMPERATURE',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Colors.green,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        selectedItemColor: Colors.black,
        items:  [
          BottomNavigationBarItem(
            icon: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.all(8),
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
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
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

