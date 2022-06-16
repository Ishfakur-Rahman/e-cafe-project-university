import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:versity_project_coffee/database/cartBoxController.dart';
import 'package:versity_project_coffee/database/cartModel.dart';
import 'package:versity_project_coffee/database/coffeeData.dart';
import 'database/coffeeModel.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
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
    id,
    images,
    title,
    subTitle,
    price,
    context,
    rating,
    model,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(model: model))); //todo modifying detail page
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
                            child: GestureDetector(
                              onTap: () {
                                ctrl.addCart(
                                  id: id,
                                  images: images,
                                  title: title,
                                  subTitle: subTitle,
                                  price: price,
                                  rating: rating,
                                );
                              },
                              child: const Icon(
                                Icons.add,
                                size: 25,
                                color: Colors.white,
                              ),
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
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: GestureDetector(
                            onTap: () {
                              Get.to(() => OfferPage());
                            },
                            child: Container(
                              height: 60,
                              width: 60,
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
                      SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          width: Get.width - 120,
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
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: ctrl.observableCatagoryList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Obx(
                              () => buildCoffeeCategory(
                                  categoryName:
                                      ctrl.observableCatagoryList[index],
                                  isSelected: ctrl.selectedCategories.value
                                      .contains(
                                          ctrl.observableCatagoryList[index])),
                            ));
                      }),
                ),
                SizedBox(
                  height: HomePage.screenHeight * 0.3,
                  child: Obx(() => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: ctrl.recommendedCoffeeList.length,
                      itemBuilder: (BuildContext context, int index) {
                        int id = ctrl.getRecomendedCoffeeId(index).value;
                        String images = ctrl.listofcoffee[id].image;
                        String title = ctrl.listofcoffee[id].title;
                        String subTitle = ctrl.listofcoffee[id].subTitle;
                        int price = ctrl.listofcoffee[id].price;
                        String rating = ctrl.listofcoffee[id].rating;
                        return buildSingleItem(
                          context: context,
                          id: index,
                          images: images,
                          title: title,
                          subTitle: subTitle,
                          price: price,
                          rating: rating,
                          model: ctrl.listofcoffee[id]
                        );
                      })),
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
                Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ctrl.allCoffeeList.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemBuilder: (context, index) {
                      int id = ctrl.getCoffeeId(index).value;
                      String images = ctrl.listofcoffee[id].image;
                      String title = ctrl.listofcoffee[id].title;
                      String subTitle = ctrl.listofcoffee[id].subTitle;
                      int price = ctrl.listofcoffee[id].price;
                      String rating = ctrl.listofcoffee[id].rating;

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
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      images,
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
                                  Text(
                                    title,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    subTitle,
                                    style: TextStyle(
                                      color: Color(0xffaeaeae),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "\$\t",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xffd17842),
                                            ),
                                          ),
                                          Text(
                                            '$price',
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
                                        child: GestureDetector(
                                          onTap: () {
                                            ctrl.addCart(
                                              id: id,
                                              images: images,
                                              title: title,
                                              subTitle: subTitle,
                                              price: price,
                                              rating: rating,
                                            );
                                          },
                                          child: const Icon(Icons.add,
                                              size: 30, color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    })),
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
  static List<String> catagory = [];
  List<CoffeeModel> listofcoffee = [];
  void onInit() async {
    var coffee = CoffeeDataLocal();
    super.onInit();
    listofcoffee = await coffee.create_list();
    catagory = await coffee.catagoryList;
  }

  static List<String> getCatagoryList() {
    List<String> list = catagory;
    list.insertAll(0, ["All"]);
    return list;
  }

  RxList<String> observableCatagoryList = getCatagoryList().obs;

  var selectedCategories = "All".obs;
  RxList<CoffeeModel> get recommendedCoffeeList => listofcoffee
      .where((coffee) => (coffee.isRecommended == true &&
          (selectedCategories.value != "All"
              ? coffee.catagory.contains(selectedCategories.value)
              : true)))
      .toList()
      .obs;

  RxList<CoffeeModel> get allCoffeeList => listofcoffee
      .where((coffee) => (selectedCategories.value != "All"
          ? coffee.catagory.contains(selectedCategories.value)
          : true))
      .toList()
      .obs;

  void toggle(String catagory) {
    selectedCategories.value = catagory;
  }

  void addCart({
    required id,
    required images,
    required title,
    required subTitle,
    required price,
    required rating,
  }) {
    final cart = CartModel(
      id: id,
      name: title,
      shopName: subTitle,
      size: "M",
      price: price.toString(),
      ratings: rating.toString(),
      image: images,
    );
    CartBoxController().addCart(cart);
  }

  Rx<int> getRecomendedCoffeeId(int index) {
    return recommendedCoffeeList[index].coffeeShopId.obs;
  }

  Rx<int> getCoffeeId(int index) {
    return allCoffeeList[index].coffeeShopId.obs;
  }
}

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                //   width: double.infinity,
                height: 400,
                child: Stack(
                  children: [
                    Image.asset(
                      'images/coffee.jpg',
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
                                image: AssetImage('images/coffee22.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child: RichText(
                                text: const TextSpan(
                          style: const TextStyle(color: Colors.white70),
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
                              style: const TextStyle(
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Expanded(
                            child: RichText(
                                text: const TextSpan(
                          style: TextStyle(color: Colors.white70),
                          children: [
                            TextSpan(
                              text:
                                  'Try these 3 delicious things and collect Top Customer Badge!  \n',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                              text:
                                  'Come in and try these menu items in any order you \n',
                              style: TextStyle(
                                height: 2,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: 'want-or all at the same time \n',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: '~ any Frappuccino * Blended Beverage \n',
                              style: TextStyle(
                                height: 2,
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: '~ a Caffe Mocha \n',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            TextSpan(
                              text: '~ any Iced Mocha \n',
                              style: TextStyle(
                                fontSize: 12,
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
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      Icons.bookmark_border,
                      size: 15,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
