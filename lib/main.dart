import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: FoodApp()));
}

class FoodApp extends StatefulWidget {
  const FoodApp({super.key});

  @override
  State<FoodApp> createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: const Color.fromARGB(255, 247, 247, 247),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(144, 207, 207, 207),
                                    blurRadius: 5)
                              ]),
                          width: 45,
                          height: 45,
                          child: Center(
                            child: Image.asset("assets/menu.png"),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 187, 0),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 45,
                          height: 45,
                          child: Center(
                            child: Image.asset("assets/profile.png"),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Let\'s eat \nquality food 😀',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 270,
                          child: TextFormField(
                            decoration: InputDecoration(
                                fillColor:
                                    const Color.fromARGB(255, 255, 255, 255),
                                filled: true,
                                hintText: 'Search',
                                prefixIcon: const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                )),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 187, 0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Image.asset("assets/filter.png"),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Container(
                                height: 50,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 187, 0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset("assets/burger.png"),
                                    ),
                                    const Text(
                                      'Fast Food',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Container(
                                height: 50,
                                width: 130,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 195, 195, 195))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child:
                                          Image.asset("assets/strawberry.png"),
                                    ),
                                    const Text(
                                      'Fruit Item',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Container(
                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 195, 195, 195))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset("assets/bro.png"),
                                    ),
                                    const Text(
                                      'Vegitable Item',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 195, 195, 195))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Image.asset("assets/mango.png"),
                                    ),
                                    const Text(
                                      'Other Items',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 420,
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 90.0,
                                ),
                                child: Container(
                                  width: 190,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color.fromARGB(
                                              170, 233, 233, 233),
                                          blurRadius: 10)
                                    ],
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 110.0),
                                    child: Column(
                                      children: [
                                        Text(
                                          'Egg Pasta',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Spicy egg pasta',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 134, 134, 134)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '🔥 69 Calories',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color.fromARGB(
                                                  255, 255, 0, 0)),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              '\$',
                                              style: TextStyle(
                                                  fontSize: 24,
                                                  color: Color.fromARGB(
                                                      255, 93, 93, 93),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '6.78',
                                              style: TextStyle(
                                                  fontSize: 28,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: -96,
                                top: -40,
                                child: SizedBox(
                                    width: 400,
                                    child: Image.asset(
                                      "assets/food2.png",
                                    )),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 110.0,
                                  ),
                                  child: Container(
                                    width: 180,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                170, 233, 233, 233),
                                            blurRadius: 10)
                                      ],
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 80.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            'Chiken Dimsum',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'Mouth watering',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 134, 134, 134)),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '🔥 45 Calories',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Color.fromARGB(
                                                    255, 255, 0, 0)),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                '\$',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Color.fromARGB(
                                                        255, 93, 93, 93),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                '9.4',
                                                style: TextStyle(
                                                    fontSize: 26,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -35,
                                  top: 0,
                                  child: SizedBox(
                                      width: 270,
                                      child: Image.asset(
                                        "assets/food1.png",
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color.fromARGB(255, 255, 187, 0),
              child: const Icon(Icons.shopping_bag_outlined),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              color: const Color.fromARGB(255, 255, 255, 255),
              shape: const CircularNotchedRectangle(), //shape of notch
              notchMargin: 10,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Color.fromARGB(255, 255, 187, 0),
                    ),
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.calendar_month,
                        color: Color.fromARGB(255, 117, 117, 117),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 117, 117, 117),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 117, 117, 117),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )));
  }
}
