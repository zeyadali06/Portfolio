class AppBarButtonModel {
  final void Function() onPressed;
  final String text;

  const AppBarButtonModel({
    required this.onPressed,
    required this.text,
  });
}
