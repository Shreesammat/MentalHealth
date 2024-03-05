import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mental_health_app_mitch/util/emoticon.dart';
import 'package:mental_health_app_mitch/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      //bottom Nav bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
        ],
      ),

      //body
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //greetings row
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi Jared!
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Hi Bamal!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(
                              height: 2,
                            ),

                            //date
                            Text(
                              '03 March,2024',
                              style: TextStyle(
                                color: Colors.blue[200],
                              ),
                            ),
                          ],
                        ),

                        //notification
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12)),
                          child: const Icon(Icons.notifications,
                              color: Colors.white, size: 24),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //search bar
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.blue[200]),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                            style: TextStyle(color: Colors.blue[200]),
                            'Search'),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //how do you feel?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white)
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  //4 different faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //badly
                      Emoticon(emoji: '😔', emotion: 'Badly'),

                      //fine
                      Emoticon(emoji: '😊', emotion: 'Fine'),

                      //well
                      Emoticon(emoji: '😁', emotion: 'Well'),

                      //excellent
                      Emoticon(emoji: '😃', emotion: 'Excellent'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(50, 60),
                  topRight: Radius.elliptical(50, 60),
                ),
                child: Container(
                  width: double.maxFinite,
                  margin: const EdgeInsets.all(0),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.grey.shade400,
                          ),
                          height: 6,
                          width: 50,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //exercise heading
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.more_horiz, color: Colors.black),
                          ],
                        ),

                        //listview of exercises
                        Expanded(
                          child: Container(
                            child: ListView(
                              children:const [
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                ExerciseTile(),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
