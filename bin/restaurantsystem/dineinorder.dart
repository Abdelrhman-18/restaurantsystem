import 'classOrder.dart';
class DineInOrder extends Order{
  int? tableNumber ;
  void setTableNumber(int Number){
    tableNumber=Number;
  }
  @override
  void processOrder(){
    super.processOrder();
    print("Table Number : $tableNumber");

  }
}