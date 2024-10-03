import 'restaurantsystem/classOrder.dart';
import 'restaurantsystem/delivery.dart';
import 'restaurantsystem/dineinorder.dart';
import 'restaurantsystem/paymentmethod.dart';
import 'restaurantsystem/takeawyorder.dart';
import 'dart:io';
PaymentMethod choosePayment(int method) {
  if (method == 1) {
    return Cash();
  } else {
    return Credit();
  }
}
void printPaymentOptions() {
  print("Choose your payment method");
  print("1 -> Cash ");
  print("2 -> Credit ");
}
void main() {
  DineInOrder order1 = DineInOrder();
  DineInOrder order2 = DineInOrder();
  Delivery order3 = Delivery();
  TakeAwayOrder order4 = TakeAwayOrder();
  int x;
  print("===============obj DineInOrder=============");
  order1.customerName = "customer1";
  order1.addFoodItem(["Pizza", "Salad"], 60);
  order1.setTableNumber(5);
  order1.processOrder();
  printPaymentOptions();
  x = int.parse(stdin.readLineSync()!);
  PaymentMethod payment1 = choosePayment(x);
  payment1.amount(order1.totalCost);

  print("===============obj DineInOrder=============");
  order2.customerName = "customer1";
  order2.addFoodItem(["Pizza", "Salad"], 60);
  order2.setTableNumber(5);
  order2.processOrder();
  printPaymentOptions();
  x = int.parse(stdin.readLineSync()!);
  PaymentMethod payment2 = choosePayment(x);
  payment2.amount(order2.totalCost);

  print("===============obj delivery===============");
  order3.customerName = "customer2";
  order3.addFoodItem(["Pizza", "Burger"], 120);
  order3.deliveryAddress = "Nasr City";
  order3.phoneNumber = 201033018404;
  order3.processOrder();
  printPaymentOptions();
  x = int.parse(stdin.readLineSync()!);
  PaymentMethod payment3 = choosePayment(x);
  payment3.amount(order3.totalCost);

  print("============obj TakeAwayOrder=============");
  order4.customerName = "customer3";
  order4.addFoodItem(["Soup", "Salad"], 80);
  order4.processOrder();
  printPaymentOptions();
  x = int.parse(stdin.readLineSync()!);
  PaymentMethod payment4 = choosePayment(x);
  payment4.amount(order4.totalCost);
}