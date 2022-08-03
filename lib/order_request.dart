import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:versity_project_coffee/api_data_model/get_order_model.dart';
import 'package:versity_project_coffee/backend_api/order_data.dart';
import 'package:versity_project_coffee/database/userBoxController.dart';

class OrderRequest extends StatelessWidget {

  Future<List<AllOrders>?> get_order() async{
    var order = await Order().get_all_order();
    var orders = GetAllOrderDataModel.fromJson(jsonDecode(order)).allOrders;
    List<AllOrders>? orderdata;
    for(var singleorder in orders!){
      if(singleorder.shopName == UserBoxController().shopId){
        orderdata?.add(singleorder);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    get_order();
    return Scaffold(
      backgroundColor: const Color(0xFF212121),
      appBar: AppBar(title: const Text('Orders Requested'),),
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
