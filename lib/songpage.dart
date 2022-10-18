import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music_ui/new_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class songpage extends StatefulWidget {
  const songpage({Key? key}) : super(key: key);

  @override
  State<songpage> createState() => _songpageState();
}

class _songpageState extends State<songpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              //back button & menu
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: newbox(child: Icon(Icons.arrow_back)),
                  ),
                  Text("P L A Y L I S T "),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: newbox(
                        child: Icon(
                      Icons.menu,
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //cover art
              newbox(
                  child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset('lib/images/Space_cat.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Space cat Remix',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey[700]),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'S a m b i t',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 22),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 32,
                        ),
                      ],
                    ),
                  )
                ],
              )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('3:05'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22'),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //linear bar
              newbox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.7,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 75,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: newbox(
                      child: Icon(
                        Icons.skip_previous,
                        size: 32,
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: newbox(
                            child: Icon(Icons.play_arrow, size: 32),
                          ),
                        )),
                    Expanded(
                        child: newbox(
                      child: Icon(Icons.skip_next, size: 32),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
