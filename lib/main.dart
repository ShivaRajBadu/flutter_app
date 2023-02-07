import 'package:flutter/material.dart';
import 'package:my_project/themes/color.dart';
import 'components/slider.dart';
import 'components/events.dart';
import 'package:my_project/utils/itemsArray.dart';
import 'package:my_project/components/item.dart';

void main() {
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List items = [
    ItemArray(
        date: '03',
        title: 'branding vector',
        isChecked: false,
        image: 'art_1.jpg',
        headTitle: 'Diamond Cowboy',
        description:
            'lorem ispum dolor sit amet, contrative apsered litst branded suduido horema isbum'),
    ItemArray(
        date: '03',
        title: 'branding vector',
        isChecked: false,
        image: 'art_1.jpg',
        headTitle: 'Diamond Cowboy',
        description:
            'lorem ispum dolor sit amet, contrative apsered litst branded suduido horema isbum'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: main_color,
          body: SingleChildScrollView(
            child: Column(
              //main column
              children: [
                Container(
                  //appbar
                  color: secondary_color,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    //appbar
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      RichText(
                          text: const TextSpan(
                              text: '',
                              style: TextStyle(),
                              children: <TextSpan>[
                            TextSpan(
                              text: 'NFT.',
                              style: TextStyle(
                                  fontFamily: 'Cursive',
                                  fontSize: 30,
                                  fontWeight: FontWeight.w100,
                                  color: white_color),
                            ),
                            TextSpan(
                                text: 'Market',
                                style: TextStyle(
                                    fontSize: 16, color: light_red_color))
                          ])),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print('menu clicked');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(50.0)),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: red_main_color, width: 2.0)),
                              child: const Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.menu,
                                  size: 23,
                                  color: red_main_color,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 1,
                            height: 40,
                            decoration: const BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        vertical: 6, horizontal: 8)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        red_main_color),
                              ),
                              onPressed: () {
                                print('sign up clicked');
                              },
                              child: const Text(
                                'sign up',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: white_color,
                                ),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ), //app bar container end
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: ' ',
                        style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            height: 1.2),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'NFT MARKETPLACE\n'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 14,
                                color: red_main_color,
                                letterSpacing: 2,
                              )),
                          TextSpan(
                              text: 'large\n'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 54,
                                color: white_color,
                              )),
                          TextSpan(
                              text: 'collection\n'.toUpperCase(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                                color: red_main_color,
                              )),
                          TextSpan(
                              text: 'of'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 44,
                                color: white_color,
                              )),
                          TextSpan(
                              text: ' Excellent!\n'.toUpperCase(),
                              style: const TextStyle(
                                fontSize: 50,
                                color: red_main_color,
                              )),
                          const TextSpan(
                              text: 'NFT ARTS',
                              style: TextStyle(
                                  fontSize: 50,
                                  color: white_color,
                                  fontFamily: 'Cursive',
                                  height: 2))
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 5),
                  child: Text(
                    'Otherwise, it will be shown with the given overflow option.those that follow, will not be .'
                        .toUpperCase(),
                    style: const TextStyle(
                        color: Color(0xff4f4e61),
                        fontSize: 14,
                        height: 1.5,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Roboto'),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      //sign up button
                      height: 55.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                        color: red_main_color,
                        borderRadius: BorderRadius.circular(6.0),
                        // border: Border.all(width: 2, color: white_color)
                      ),
                      child: InkWell(
                        onTap: () {
                          // your code here
                          showModalBottomSheet<void>(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                height: 400,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    TextField(
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.verified_user,
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter your userName..',
                                      ),
                                    ),
                                    TextField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(
                                          Icons.verified_user,
                                        ),
                                        border: OutlineInputBorder(),
                                        hintText: 'Enter your password..',
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: const Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      //button login
                      width: 120,
                      height: 55,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 2, color: white_color)),
                      child: InkWell(
                        onTap: () {},
                        child: const Center(
                          child: Text(
                            'LOG IN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Roboto',
                                fontSize: 14),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 60,
                ),
                //image container
                Container(
                  height: 250.0,
                  width: 600.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/main_img.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 2, color: red_main_color)),
                                      child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3, vertical: 3),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                      const EdgeInsets.symmetric(
                                          horizontal: 12, vertical: 5)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          red_main_color),
                                ),
                                child: Text(
                                  'Learn More'.toUpperCase(),
                                  style: const TextStyle(
                                      fontSize: 8,
                                      color: white_color,
                                      fontWeight: FontWeight.bold),
                                ))
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Flexible(
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
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border: Border.all(
                                              width: 2, color: red_main_color)),
                                      child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3, vertical: 3),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
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
                                    const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 5)),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        red_main_color),
                              ),
                              child: Text(
                                'Learn More'.toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 8,
                                    color: white_color,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Our Community'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20,
                      color: white_color,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: white_color)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'interview'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: white_color,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: red_main_color,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: red_main_color)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Roadmap'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: white_color,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(width: 1, color: white_color)),
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'exhibation'.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 10,
                              color: white_color,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),
                const SizedBox(height: 510, child: Events()),
                // const Events(),

                const SizedBox(
                  height: 110,
                  child: SliderText(),
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur adipisicing elit. Impedit, eaque! Quo omnis vero deleniti incidunt.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 171, 171, 171),
                        fontSize: 16,
                        height: 1.7,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(red_main_color),
                  ),
                  child: Text(
                    'sign up'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: white_color),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  height: 350,
                  decoration: const BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('images/bg.png'))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
