import 'package:flutter/material.dart';
import 'package:versity_project_coffee/backend_api/order_data.dart';
class OrderRequest extends StatelessWidget {
  void get_order() async{
    var orders = await Order().get_all_order();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(title: const Text('Orders Requested'),),
      body: SafeArea(
        child: FutureBuilder(
          //future: get_order(),
          builder: (context, snapshot) {
            return Container();
          }
        ),
      ),
    );
  }
}
