import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  int? _radioSelected;
  String _radioVal = "";



  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    controller.addStatusListener((status) async {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        controller.reset();
      }
    });
  }

  ///dispose
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var index;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(' Payment'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
           Lottie.asset("assets/90605-delivery-bike.json"),
                SizedBox(
                height: 5,
            ),

            //Order Button//
            ElevatedButton.icon(
              icon: const Icon(
                Icons.delivery_dining_outlined,
                size: 10,
              ),
              onPressed: showDialogBox,
              label: const Text('Order Now'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  textStyle:
                      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Icon(Icons.money),
                      SizedBox(width: 10,),
                      const Text("Cash on Delivery",),

                     SizedBox(width: 180,),
                      Radio(
                        value: 1,
                        groupValue: _radioSelected,
                        activeColor: Colors.blue,
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as int;
                            _radioVal = 'Cash on Delivery';
                            print(_radioVal);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 65, height: 2,),
                      Text('pay your payment by cash after getting your food',
                      style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                 SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Icon(Icons.mobile_friendly),
                      SizedBox(width: 10,),
                      const Text("Bikash"),
                      SizedBox(width: 230,),
                      Radio(
                        value: 2,
                        groupValue: _radioSelected,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            _radioSelected = value as int;
                            _radioVal = 'Bikash';
                            print(_radioVal);
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(width: 65,),
                      Text('Faster and safer way to send money via Bikash App',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
   
                ),
          ],
        ),
      ]
      ),
    );
  }

  //***************Dialog Function*******************//
  void showDialogBox() => showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Dialog(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Lottie.asset("assets/50465-done.json",
                  repeat: false,
                  controller: controller, onLoaded: (composition) {
                controller.forward();
              }),
              const Text(
                'Enjoy your order!',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              )
            ]),
          ));
}