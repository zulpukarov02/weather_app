import 'package:flutter/material.dart';
import 'package:weather_app/src/constants/app_colors.dart';

class CusttomIconButton extends StatelessWidget {
  const CusttomIconButton({
    super.key,
    required this.icons,
    this.onPressed,
  });
  final void Function()? onPressed;
  final IconData? icons;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icons,
        color: AppColors.aktys,
        size: 50,
      ),
    );
  }
}
