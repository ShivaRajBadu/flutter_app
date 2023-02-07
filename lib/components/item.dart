import 'package:flutter/material.dart';
import 'package:my_project/themes/color.dart';

class Item extends StatefulWidget {
  const Item({super.key, required item});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        //first item
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(
                      text: '',
                      style: const TextStyle(),
                      children: <TextSpan>[
                    const TextSpan(
                        text: '02\n',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: white_color)),
                    TextSpan(
                        text: 'Branding Vector'.toUpperCase(),
                        style: const TextStyle(
                            height: 2,
                            fontFamily: 'Roboto',
                            color: red_main_color,
                            fontSize: 8,
                            fontWeight: FontWeight.w600))
                  ])),
              GestureDetector(
                  onTap: () {
                    print('clicked in watch later');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2, color: red_main_color)),
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                        child: Icon(
                          Icons.watch_later_outlined,
                          color: white_color,
                          size: 20,
                        )),
                  ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 140,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: AssetImage('images/main_img.webp'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Diamond CowBoy',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: white_color,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Doloribus commodi iure alias',
            style: TextStyle(
                fontSize: 10,
                height: 1.5,
                color: Color(0xff4f4e61),
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 8,
          ),
          TextButton(
            onPressed: () {},
            // ignore: prefer_const_constructors
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 5)),
              backgroundColor: MaterialStateProperty.all<Color>(red_main_color),
            ),
            child: Text(
              'Learn More'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 8, color: white_color, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
