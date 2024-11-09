class AddOrder {
  final String number;
  final int amount;
  final String orderType;
  final bool? isActive;

  AddOrder({
    required this.number,
    required this.amount,
    required this.orderType,
    this.isActive,
  });
}
