part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  final String id;
  final bool isAvailable;
  //? 0 = tersedia
  //? 1 = seleced
  //? 3 = tidak tersedia
  const SeatItem({
    Key? key,
    this.isAvailable = true,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvailable) {
        return unColor;
      } else {
        if (isSelected) {
          return primaryColor;
        } else {
          return avColor;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return unColor;
      } else {
        return primaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
          ),
        );
      } else {
        return SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: borderColor(),
          ),
        ),
        child: child(),
      ),
    );
  }
}
