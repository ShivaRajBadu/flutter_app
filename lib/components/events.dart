import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_project/utils/eventArray.dart';
import 'package:my_project/themes/color.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  List allEvent = [
    EventArray(
        date: '2019',
        location: 'Nepal',
        typeOfTool: 'Hacking',
        title: 'Delta1.0'),
    EventArray(
        date: '2012',
        location: 'Pulchok',
        typeOfTool: 'design',
        title: 'Locus1.0'),
    EventArray(
        date: '2020',
        location: 'Dharan',
        typeOfTool: 'Development',
        title: 'Delta2.0'),
    EventArray(
        date: '2021',
        location: 'Sunsari',
        typeOfTool: 'Medical',
        title: 'Corona2.0'),
    EventArray(
        date: '2022',
        location: 'Dharan,Nepal',
        typeOfTool: 'Sustainable Development',
        title: 'Delta3.0'),
  ];

  bool isExpand = false;
  int currentState = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            itemCount: allEvent.length,
            itemBuilder: (context, index) {
              if (index < currentState) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      border: Border.all(
                        width: 1,
                        color: index.isEven ? red_main_color : white_color,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        allEvent[index].date,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: white_color,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        allEvent[index].title.toUpperCase(),
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: white_color,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: white_color,
                            size: 16,
                          ),
                          const SizedBox(width: 6.0),
                          Text(
                            allEvent[index].location.toUpperCase(),
                            style: const TextStyle(
                                color: white_color, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.radio_sharp,
                            color: white_color,
                            size: 16,
                          ),
                          const SizedBox(width: 6.0),
                          Text(
                            "${allEvent[index].typeOfTool} tool".toUpperCase(),
                            style: const TextStyle(
                                color: white_color, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.chevron_right,
                          color: white_color,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ),
        TextButton(
          onPressed: () {
            if (currentState <= allEvent.length) {
              setState(() {
                currentState += 1;
              });
            } else {
              if (currentState > 0) {
                print('less trigger');
                setState(() {
                  currentState -= 1;
                });
              }
            }
          },
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 18, vertical: 3)),
              backgroundColor:
                  MaterialStateProperty.all<Color>(red_main_color)),
          child: Text(
            currentState <= allEvent.length
                ? 'Load More'
                : 'Show Less'.toUpperCase(),
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w600, color: white_color),
          ),
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
