import 'classOrder.dart';
class Delivery extends Order{
  String? deliveryAddress;
  int? phoneNumber ;
  void setDeliveryAddress(String Address, int phone){
    deliveryAddress=Address;
    phoneNumber = phone;
  }
  @override
  void processOrder() {
    super.processOrder();
    print("This order is delivered to :$deliveryAddress ");
    print("phone number :$phoneNumber");
  }
}