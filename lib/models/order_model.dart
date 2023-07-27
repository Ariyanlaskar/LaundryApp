// ignore_for_file: camel_case_types

class orderModel {
  final String type;
  final dynamic orderDate;
  final dynamic delDate;

  orderModel({
    required this.type,
    required this.delDate,
    required this.orderDate,
  });

  // ignore: empty_constructor_bodies
  static List<orderModel> getOrder() {
    List<orderModel> orders = [];
    orders.add(orderModel(
        type: 'Delivering Order',
        orderDate: '2023.08.18',
        delDate: '2023.08.19'));
    orders.add(orderModel(
        type: 'Placing Up Order',
        orderDate: '2023.08.20',
        delDate: '2023.08.23'));
    return orders;
  }
}
