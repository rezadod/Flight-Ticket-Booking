part of 'widgets.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: whiteColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TODO DESTINATION TILE
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      image: NetworkImage(transaction.destination.imageUrl),
                      fit: BoxFit.cover),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.name,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2),
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/star.png'),
                      ),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ],
          ),

          // TODO BOOKING DETAIL

          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 16),
            ),
          ),
          BookingDetailItem(
              title: 'Traveler',
              valueColor: blackColor,
              valueText: '${transaction.amountOfTraveler}'),
          BookingDetailItem(
              title: 'Seat',
              valueColor: blackColor,
              valueText: transaction.selectedSeats),
          BookingDetailItem(
              title: 'Insurance',
              valueColor: transaction.insurance ? greenColor : redColor,
              valueText: transaction.insurance ? 'YES' : 'NO'),
          BookingDetailItem(
              title: 'Refundable',
              valueColor: transaction.refunanble ? greenColor : redColor,
              valueText: transaction.refunanble ? 'YES' : 'NO'),
          BookingDetailItem(
              title: 'VAT',
              valueColor: blackColor,
              valueText: '${(transaction.vat * 100).toStringAsFixed(0)}%'),
          BookingDetailItem(
            title: 'Price',
            valueColor: blackColor,
            valueText: NumberFormat.currency(
                    locale: 'id', symbol: "IDR ", decimalDigits: 0)
                .format(transaction.price),
          ),
          BookingDetailItem(
            title: 'Grand Total',
            valueColor: primaryColor,
            valueText: NumberFormat.currency(
                    locale: 'id', symbol: "IDR ", decimalDigits: 0)
                .format(transaction.grandTotal),
          ),
        ],
      ),
    );
  }
}
