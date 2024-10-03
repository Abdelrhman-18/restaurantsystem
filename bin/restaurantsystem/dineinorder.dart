import 'classOrder.dart';

class DineInOrder extends Order {
  static List<int> tableNumber = [];
  bool flag = true;
  void setTableNumber(int number) {
    if (DineInOrder.tableNumber.contains(number)) {
      flag = false;
    } else {
      DineInOrder.tableNumber.add(number);
      flag = true; 
    }
  }

  @override
  void processOrder() {
    super.processOrder();
    if (!flag) {
      print("Table is not available.");
    } else {
      print("Table Numbers: $tableNumber");
    }
  }
}
