class Order{
  String? customerName ;
  List <String> foodItems =[] ;
  double totalCost = 0;
  void addFoodItem(List <String> Items,double Cost){
    foodItems.addAll(Items);
    totalCost+=Cost;
  }
  void processOrder(){
    print("Customer Name is :$customerName");
    print("TotalCost : $totalCost");
  }
}