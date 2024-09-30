abstract class PaymentMethod{
  void amount(double amount);
}
class Credit implements PaymentMethod{
  @override
  void amount(double amount) {
    print("pay Bay Credit: $amount");
  }
}
class Cash implements PaymentMethod{
  @override
  void amount(double amount) {
    print("pay Bay Cash: $amount");
  }
}