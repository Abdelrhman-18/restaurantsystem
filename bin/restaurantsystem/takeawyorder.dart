import 'classOrder.dart';
class TakeAwayOrder extends Order{
  @override
  void processOrder() {
    super.processOrder();
    print("The Order Take Away");
  }
}