import 'classOrder.dart';
class Delivery extends Order{
  String? deliveryAddress;
  void setDeliveryAddress(String Address){
    deliveryAddress=Address;
  }
  @override
  void processOrder() {
    super.processOrder();
    print("This order is delivered to $deliveryAddress ");
  }
}