import 'package:equatable/equatable.dart';
import 'package:planeapp/model/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool insurance;
  final bool refunanble;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel({
    this.amountOfTraveler = 0,
    this.id = '',
    this.grandTotal = 0,
    this.insurance = false,
    this.price = 0,
    this.selectedSeats = '',
    this.vat = 0.0,
    this.refunanble = false,
    required this.destination,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        id: id,
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        amountOfTraveler: json['amountOfTraveler'],
        selectedSeats: json['selectedSeats'],
        insurance: json['insurance'],
        refunanble: json['refunanble'],
        vat: json['vat'],
        price: json['price'],
        grandTotal: json['grandTotal'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        amountOfTraveler,
        grandTotal,
        insurance,
        price,
        selectedSeats,
        vat,
        refunanble,
        destination
      ];
}
