import 'package:flutter/material.dart';
import 'package:open_fashion_with_clean_code/common/routes/routes.dart';
import 'package:open_fashion_with_clean_code/common/utils/buttons.dart';
import 'package:open_fashion_with_clean_code/components/constants/app_assets.dart';
import 'package:open_fashion_with_clean_code/common/widgets/common_widgets.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';
import 'package:open_fashion_with_clean_code/components/constants/sizing.dart';
import 'package:open_fashion_with_clean_code/components/constants/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //
  void exploreCollection() {
    Navigator.pushNamed(context, collectionRoute);
  }

  // drawer
  void getDrawer() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: svgPicture(AppAssets.menuIcon),
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0.5,
        title: Center(
          child: svgPicture(AppAssets.appLogo),
        ),
        actions: [
          svgPicture(AppAssets.searchIcon),
          svgPicture(AppAssets.shoppingIcon)
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: AppSizing.kHeight,
            width: AppSizing.kWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppAssets.landing), fit: BoxFit.cover)),
          ),
          Center(
            child: Text(
              """LUXURY
            FASHION
  &ASSESORIES,
          """,
              style: AppTextTheme.kHeaderStyle,
            ),
          ),
          button(onTap: exploreCollection)
        ],
      ),
    );
  }
}
