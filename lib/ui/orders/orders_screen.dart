import 'package:flutter/material.dart';
import 'order_manager.dart';
import 'order_item_cart.dart';
import '../shared/app_drawer.dart';
class OrdersScreen extends StatelessWidget{
  static const routeName='/orders';
  const OrdersScreen({super.key});
  @override
  Widget build(BuildContext context){
    print('Building orders');
    final ordersManager=OrederManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),

      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx,i) => OrderItemCart(ordersManager.orders[i]),
      ),
    );
  }
}