class Card{

  final String cardNumber;
  final String holderName;
  final String expirationYear;
  final String expirationMonth;
  final String cvv2;
  final String brand;
  final String creationDate;

  Card(
    this.cardNumber,
    this.holderName,
    this.expirationYear,
    this.expirationMonth,
    this.cvv2,
    {
      this.brand,
      this.creationDate,
    });

  factory Card.fromJson(Map json) {
    return Card(
      json['card_number'] ?? "",
      json['holder_name'] ?? "",
      json['expiration_year'] ?? "",
      json['expiration_month'] ?? "",
      json['cvv2'] ?? "" , //never returned by backend :)
      brand: json['brand'] ?? "",
      creationDate: json['creationDate'] ?? "",
    );
  }

}