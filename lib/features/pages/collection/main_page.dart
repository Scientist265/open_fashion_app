import 'package:flutter/material.dart';
import 'package:open_fashion_with_clean_code/common/widgets/sub_title_text.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';

class CollectionMainPage extends StatefulWidget {
  const CollectionMainPage({super.key});

  @override
  State<CollectionMainPage> createState() => _CollectionMainPageState();
}

class _CollectionMainPageState extends State<CollectionMainPage>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const SubTitleText(text: "New arrival"),
      ),
      body: const SingleChildScrollView(
        child: Column(children: []),
      ),
    );
  }
}
