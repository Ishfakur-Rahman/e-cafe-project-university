import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        centerTitle: true,
        title: Text('Your Cart',
        style: TextStyle(
          color: Colors.white70,
        ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(horizontal: 15),
               height: screenHeight * 0.2 - 20,
               width: double.infinity,
          decoration: BoxDecoration(
              color: const Color(0xff171b22),
              borderRadius: BorderRadius.circular(25),
          ),
             child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                          color: Color(0xff30221f),
                        ),
                      ],
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/coffee3.jpeg",
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Jamaican Blue Mountain",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        "Blue Mountain coffee",
                        style:  TextStyle(
                          color: Color(0xffaeaeae),
                        ),
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "\$\t",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffd17842),
                                ),
                              ),
                              Text(
                                "4.20",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffd17842),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: const Icon(Icons.delete,
                                size: 30, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
          ),

        ),
           ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: screenHeight * 0.2 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff171b22),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                color: Color(0xff30221f),
                              ),
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee4.jpeg",
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Americano",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              "With Espresso",
                              style:  TextStyle(
                                color: Color(0xffaeaeae),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "\$\t",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    Text(
                                      "4.20",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Icon(Icons.delete,
                                      size: 30, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  height: screenHeight * 0.2 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff171b22),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 2.0,
                                spreadRadius: 1.0,
                                color: Color(0xff30221f),
                              ),
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee6.jpeg",
                              ),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Cafe au Lait",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Text(
                              "With French press coffee",
                              style:  TextStyle(
                                color: Color(0xffaeaeae),
                              ),
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "\$\t",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xffd17842),
                                      ),
                                    ),
                                    Text(
                                      "4.20",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffd17842),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: const Icon(Icons.delete,
                                      size: 30, color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),

                ),
              ),
  ]
      ),
    );
  }
}
