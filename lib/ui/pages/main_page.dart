part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavbar() {
      return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 30, left: 24, right: 24),
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtomNavigatonItem(
                  index: 0,
                  imageUrl: 'assets/globe.png',
                ),
                CustomButtomNavigatonItem(
                  index: 1,
                  imageUrl: 'assets/book.png',
                ),
                CustomButtomNavigatonItem(
                  index: 2,
                  imageUrl: 'assets/card_menu.png',
                ),
                CustomButtomNavigatonItem(
                  index: 3,
                  imageUrl: 'assets/setting.png',
                )
              ],
            ),
          ));
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: bgColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavbar(),
            ],
          ),
        );
      },
    );
  }
}
