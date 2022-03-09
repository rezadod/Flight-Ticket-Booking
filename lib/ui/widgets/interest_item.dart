part of 'widgets.dart';

class InterestItem extends StatelessWidget {
  final String text;
  const InterestItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/checklist.png'), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            'skadkaksd',
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
