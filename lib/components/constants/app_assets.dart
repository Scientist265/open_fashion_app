class AppAssets {
  static String _getImagePath(String asset) {
    return "assets/images/$asset.svg";
  }

  static String _getIconPath(String asset) {
    return "assets/icons/$asset.svg";
  }

  static String _getPngImagePath(String asset) {
    return "assets/images/$asset.png";
  }

//Images
  static String appLogo = _getImagePath("logo");
  static String landingPage = _getImagePath("landing_page");
  static String landing = _getPngImagePath("landing_page");

  //Icons
  static String menuIcon = _getIconPath("menu");
  static String galleryIcon = _getIconPath("gallery");
  static String doorToDoorIcon = _getIconPath("door_to_door_delivery");
  static String searchIcon = _getIconPath("search");
  static String shoppingIcon = _getIconPath("shopping_bag");
}
