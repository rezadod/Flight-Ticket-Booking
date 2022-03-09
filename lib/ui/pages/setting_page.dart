part of 'pages.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is AuthFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(backgroundColor: redColor, content: Text(state.error)));
        } else if (state is AuthInitial) {
          Navigator.pushAndRemoveUntil(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return SignInPage();
          }), (route) => false);
        }
      },
      builder: (context, state) {
        if (state is AuthLoading) {
          context.read<PageCubit>().setPage(0);
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Center(
            child: TextButton(
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
          child: Text('Logout'),
        ));
      },
    );
  }
}
