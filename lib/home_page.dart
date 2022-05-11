import 'package:flutter/material.dart';
import 'Theme/mText.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  static var screenHeight;
  static var screenWidth;

  Widget buildCoffeeCategory({categoryName, isSelected}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isSelected ? const Color(0xffd17842) : const Color(0xff52555a),
            ),
          ),
          isSelected
              ? const Text(
            "⬤",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xffd17842),
            ),
          )
              : const Text(""),
        ],
      ),
    );
  }

  Widget buildSingleItem({
    images,
    title,
    subTitle,
    price,
    context,
    rating,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        width: screenWidth * 0.4 + 10,
        height: screenHeight * 0.3,
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff17191f),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                          color: Color(0xff30221f),
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(images),
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        subTitle,
                        style: const TextStyle(
                          color:  Color(0xffaeaeae),
                          fontSize: 10,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "\$\t",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffd17842)),
                              ),
                              Text(
                                "$price",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffd17842),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20.0,
              width: 55.0,
              decoration: const BoxDecoration(
                color:  Color(0xff231715),
                borderRadius: BorderRadius.only(
                  topRight:  Radius.circular(20.0),
                  bottomLeft: Radius.circular(15.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.star,
                    size: 12,
                    color: Color(0xffd17842),
                  ),
                  Text(
                    "$rating",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff141921),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(
                        Icons.grid_view_rounded,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xff141921),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Icon(
                        Icons.settings,
                        color: Color(0xff4d4f52),
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Have you ever made a fantastic cup of coffee and forgot the exact brewing process?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Not anymore! Say hi to your personal coffee tasting journal 👋",
                      style:  TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 197, 198, 201),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff52555a),
                      ),
                      hintText: "Find your coffee...",
                      hintStyle: const TextStyle(
                        color: Color(0xff52555a),
                      ),
                      fillColor: const Color(0xff141921),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildCoffeeCategory(
                      categoryName: "Cappuccino",
                      isSelected: true,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Mocha",
                      isSelected: false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Latte",
                      isSelected: false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Espresso",
                      isSelected: false,
                    ),
                    buildCoffeeCategory(
                      categoryName: "Cappuccino",
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    buildSingleItem(
                      context: context,
                      images: "images/coffee1.jpeg",
                      title: "Cappuccino",
                      subTitle: "With Oat Milk",
                      price: 4.20,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "images/coffee8.jpeg",
                      title: "Espresso",
                      subTitle: "With Chocolate",
                      price: 3.14,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "images/coffee2.jpeg",
                      title: "Mocha",
                      subTitle: "With hot brewed Coffee",
                      price: 3.14,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      images: "images/coffee4.jpeg",
                      title: "Americano",
                      subTitle: "With Espresso",
                      price: 3.14,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "images/coffee5.jpeg",
                      title: "Cafe Latte",
                      subTitle: "With milk",
                      price: 3.14,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "images/coffee6.jpeg",
                      title: "Cafe au Lait",
                      subTitle: "With French press coffee",
                      price: 3.14,
                      rating: 4.5,
                    ),
                    buildSingleItem(
                      context: context,
                      images: "images/coffee7.jpeg",
                      title: "Cappuccino",
                      subTitle: "With Chocolate",
                      price: 3.14,
                      rating: 4.5,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child:  ListTile(
                  leading: Text(
                    "Coffee's you must try once!...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
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
                              child: const Icon(Icons.add,
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
               Container(
          margin: const EdgeInsets.only(right: 15),
          height: 25.0,
          width: 50.0,
          decoration: const BoxDecoration(
            color:  Color(0xff231715),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              bottomLeft:  Radius.circular(20.0),
            ),
          ),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
                 Icon(
                Icons.star,
                size: 15,
                color: Color(0xffd17842),
              ),
              Text(
                "4.5",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        ],
      )
      ],
    ),
    ),
    ),
    );
  }
}