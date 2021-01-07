import 'package:flutter_openpay/src/card.dart';

class Token{

  final String id;
  final Card card;

  Token(this.id, this.card);

  factory Token.fromJson(Map data) {
    return Token(data['id'] ?? "", Card.fromJson(data['card']));
  }

}