import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Theme/mText.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  //coffeeShop
// coffeeDetails
  var fire = FirebaseFirestore.instance;
  static var screenHeight;
  static var screenWidth;
  HomePageController ctrl = Get.put(HomePageController());
  Widget buildCoffeeCategory({categoryName, isSelected}) {
    return GestureDetector(
      onTap: () {
        ctrl.toggle(categoryName);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Text(
              categoryName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isSelected
                    ? const Color(0xffd17842)
                    : const Color(0xff52555a),
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
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage())); //todo modifying detail page
      },
      child: Container(
        width: HomePage.screenWidth * 0.4 + 10,
        height: HomePage.screenHeight * 0.3,
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
                          color: Color(0xffaeaeae),
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
                color: Color(0xff231715),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
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
    HomePage.screenHeight = MediaQuery.of(context).size.height;
    HomePage.screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0f14),
      body: SafeArea(
        child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => OfferPage());
                      },
                      child: Container(
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
                    ),
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
                SizedBox(
                  height: 40,
                  child: StreamBuilder<QuerySnapshot>(
                      stream: fire.collection("coffeeCategories").snapshots(),
                      builder: (context, snapshot) {
                        if(snapshot.hasData){
                          final stream = snapshot.requireData.docs;
                          print(stream);
                        }
                        return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: ctrl.categories.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Obx(
                                    () => buildCoffeeCategory(
                                        categoryName: ctrl.categories[index],
                                        isSelected: ctrl
                                            .selectedCategories.value
                                            .contains(ctrl.categories[index])),
                                  ));
                            });
                      }),
                ),
                SizedBox(
                  height: HomePage.screenHeight * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return buildSingleItem(
                          context: context,
                          images: "images/coffee1.jpeg",
                          title: "Cappuccino",
                          subTitle: "With Oat Milk",
                          price: 4.20,
                          rating: 4.5,
                        );
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: ListTile(
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
                ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(12.0),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        height: HomePage.screenHeight * 0.2 - 20,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                    style: TextStyle(
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
                                          borderRadius:
                                              BorderRadius.circular(10.0),
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
                      );
                    }),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 25.0,
                  width: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff231715),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
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
            )),
      ),
    );
  }
}

class HomePageController extends GetxController {

  RxMap<String, bool> item =
      {"All": false, "Cuppuchino": false, "Lato": false, "Expresso": false}.obs;

  var selectedCategories = ["All"].obs;

  get categories => item.entries.map((e) => e.key).toList().obs;

  void toggle(String item) {
    selectedCategories.value = [item];
  }
}

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: Column(
        children: [
          Container(
              //   width: double.infinity,
              height: 400,
              child: Stack(
                children: [
                  Image.asset(
                    'images/image.png',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 30,
                    top: 60,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 16,
                      bottom: 16,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(36)),
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ))
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  'Offers and Discounts',
                  style: TextStyle(
                    fontSize: 27,
                    //   fontWeight:   FontWeight.bold,
                    color: Colors.white60,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: AssetImage('images/coffee22.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                          child: RichText(
                              text: TextSpan(
                        style: TextStyle(color: Colors.white70),
                        children: [
                          TextSpan(
                            text: 'Get Discount of \n',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: '30% \n',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                          TextSpan(
                            text:
                                'A brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species.',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.bookmark_border,
                    size: 15,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
