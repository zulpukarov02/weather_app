import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/api_const.dart';
import 'package:weather_app/src/components/custtom_icon_button.dart';
import 'package:weather_app/src/constants/app_colors.dart';
import 'package:weather_app/src/constants/app_text.dart';
import 'package:weather_app/src/constants/app_text_style.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppText.appBarTitle,
          style: AppTextStyle.appBarStyle,
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/fotoweather2.jp"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CusttomIconButton(
                  icons: Icons.navigation_sharp,
                  onPressed: () {
                    // setState(() {});
                  },
                ),
                CusttomIconButton(
                  icons: Icons.home,
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                Text(
                  AppText.segiz,
                  style: TextStyle(fontSize: 100, color: AppColors.aktys),
                ),
                Image.network(
                  ApiConst.getIcon,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
              child: FittedBox(
                child: Text(
                  '''                 You`ll
          need  
            and''',
                  style: AppTextStyle.bodyInfostyle,
                ),
              ),
            ),
            const Expanded(
              child: FittedBox(
                child: Text(
                  AppText.shaarlar,
                  style: AppTextStyle.bodyInfostyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

var dio = Dio();
