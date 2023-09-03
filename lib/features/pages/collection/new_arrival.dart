import 'package:flutter/material.dart';
import 'package:open_fashion_with_clean_code/components/constants/app_assets.dart';
import 'package:open_fashion_with_clean_code/components/constants/colors.dart';
import 'package:open_fashion_with_clean_code/components/constants/sizing.dart';
import 'package:open_fashion_with_clean_code/components/constants/styles.dart';

class NewArrivalSection extends StatefulWidget {
  const NewArrivalSection({
    super.key,
  });

  @override
  State<NewArrivalSection> createState() => _NewArrivalSectionState();
}

class _NewArrivalSectionState extends State<NewArrivalSection> {
  final AppSizing _sizing = AppSizing();
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: _newArrivalList.map((e) {
          return Column(
            children: [
              
            ],
          );
        }).toList());
  }
}

class NewArrivalModel {
  final String imgPath;
  final String productTitle;
  final String price;
  NewArrivalModel({
    required this.imgPath,
    required this.productTitle,
    required this.price,
  });
}

List<NewArrivalModel> _newArrivalList = [
  NewArrivalModel(
      imgPath: AppAssets.newArrival1, productTitle: 'Product 1', price: '120'),
  NewArrivalModel(
      imgPath: AppAssets.newArrival2, productTitle: 'Product 2', price: '120'),
  NewArrivalModel(
      imgPath: AppAssets.newArrival3, productTitle: 'Product 3', price: '120'),
  NewArrivalModel(
      imgPath: AppAssets.newArrival4, productTitle: 'Product 4', price: '120'),
];
