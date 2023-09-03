import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_fashion_with_clean_code/common/widgets/sub_title_text.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';
import 'package:open_fashion_with_clean_code/components/constants/sizing.dart';
import 'package:open_fashion_with_clean_code/features/pages/collection/new_arrival.dart';

import '../../../components/constants/styles.dart';

class CollectionMainPage extends StatefulWidget {
  const CollectionMainPage({super.key});

  @override
  State<CollectionMainPage> createState() => _CollectionMainPageState();
}

class _CollectionMainPageState extends State<CollectionMainPage>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: collectionTabs.length, vsync: this);
  final sizing = AppSizing();
  final List<Tab> collectionTabs = <Tab>[
    const Tab(
      text: "All",
    ),
    const Tab(
      text: "Apparel",
    ),
    const Tab(
      text: "Dress",
    ),
    const Tab(
      text: "TShirt",
    ),
    const Tab(
      text: "Bag",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            sizing.heightSpacer(15),
            SubTitleText(
              text: "New arrival",
              color: AppColors.kbodyColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 5.h),
              child: Stack(
                children: [
                  Divider(
                    thickness: 1,
                    color: AppColors.kPrimaryColor,
                  ),
                  Center(
                    child: CircleAvatar(
                      backgroundColor: AppColors.ktransparentColor,
                      radius: 6,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 10.h),
          child: Column(children: [
            TabBar(
                controller: _tabController,
                labelColor: AppColors.kTittleActive,
                unselectedLabelColor: AppColors.kPlaceholderColor,
                unselectedLabelStyle: AppTextTheme.kPrimaryStyle,
                labelStyle: AppTextTheme.kPrimaryStyle
                    .copyWith(fontSize: 17, fontWeight: FontWeight.w600),
                labelPadding: const EdgeInsets.symmetric(horizontal: 25),
                indicator: BoxDecoration(
                    color: AppColors.kBackgroundColor, shape: BoxShape.circle),
                isScrollable: true,
                tabs: collectionTabs),
            SizedBox(
              height: AppSizing.kHeight,
              width: MediaQuery.of(context).size.width,
              child: Expanded(
                  child:
                      TabBarView(controller: _tabController, children: const [
                NewArrivalSection(),
                NewArrivalSection(),
                NewArrivalSection(),
                NewArrivalSection(),
                NewArrivalSection(),
              ])),
            )
          ]),
        ),
      ),
    );
  }
}
