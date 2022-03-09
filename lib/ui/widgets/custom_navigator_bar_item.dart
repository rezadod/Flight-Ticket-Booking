part of 'widgets.dart';

class CustomButtomNavigatonItem extends StatelessWidget {
  final String imageUrl;
  final int index;
  const CustomButtomNavigatonItem({
    Key? key,
    required this.imageUrl,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<PageCubit>().setPage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Image.asset(
            imageUrl,
            width: 24,
            height: 24,
            color: context.read<PageCubit>().state == index
                ? primaryColor
                : greyColor,
          ),
          Container(
            width: 30,
            height: 2,
            decoration: BoxDecoration(
                color: context.read<PageCubit>().state == index
                    ? primaryColor
                    : transparantColor,
                borderRadius: BorderRadius.circular(18)),
          )
        ],
      ),
    );
  }
}
