part of 'pages.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 80),
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/scheduling.png'),
                ),
              ),
            ),
            Text(
              'Well Booked 😍',
              style:
                  blackTextStyle.copyWith(fontWeight: semibold, fontSize: 32),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the ne\nworld of experiences?',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontWeight: light, fontSize: 16),
            ),
            CustomButton(
              title: 'MyBookings',
              // onPressed: () {Navigator.pushAndRemoveUntil(context, '/main', (route) => false);},
              onPressed: () {
                context.read()<PageCubit>().setPage(1);
                Navigator.pushNamed(context, '/main');
              },
              width: 220,
              margin: EdgeInsets.only(top: 50),
            )
          ],
        ),
      ),
    );
  }
}
