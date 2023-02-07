import 'package:flutter/material.dart';
import 'package:my_project/themes/color.dart';

class SliderText extends StatefulWidget {
  const SliderText({
    super.key,
  });

  @override
  State<SliderText> createState() => _SliderTextState();
}

class _SliderTextState extends State<SliderText> {
  int currentState = 1;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentState = index;
              });
            },
            children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: '2021 best'.toUpperCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1)),
                    const TextSpan(
                        text: 'ntf - market\n',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Cursive',
                            color: red_main_color,
                            height: 1)),
                    TextSpan(
                        text: 'vector arts image'.toLowerCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: '2022 best'.toUpperCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1)),
                    const TextSpan(
                        text: 'Jft - market\n',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Cursive',
                            color: red_main_color,
                            height: 1)),
                    TextSpan(
                        text: 'govter arts image'.toLowerCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: '2023 worst'.toUpperCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            height: 1)),
                    const TextSpan(
                        text: 'Jft - market\n',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Cursive',
                            color: red_main_color,
                            height: 1)),
                    TextSpan(
                        text: 'Raster arts image'.toLowerCase(),
                        style: const TextStyle(
                            color: white_color,
                            fontSize: 24,
                            fontWeight: FontWeight.w800))
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < 3; i++)
                GestureDetector(
                  onTap: () {
                    _pageController.jumpToPage(i);
                    setState(() {
                      currentState = i;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    height: 6,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: i == currentState ? red_main_color : borde_color,
                        shape: BoxShape.rectangle),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
