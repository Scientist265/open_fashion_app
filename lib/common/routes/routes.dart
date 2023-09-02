import 'package:flutter/material.dart';
import 'package:open_fashion_with_clean_code/features/pages/collection/main_page.dart';
import 'package:open_fashion_with_clean_code/features/pages/homepage/home_page.dart';

Map<String, Widget Function(BuildContext context)> appRoutes = {
  homeRoute: (context) => const HomePage(),
  collectionRoute: (context) => const CollectionMainPage(),
};

String homeRoute = '/home_page';
String collectionRoute = '/collection_page';
