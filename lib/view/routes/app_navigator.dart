part of 'routes.dart';

goToScreen({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  //Get.toNamed(screenNames);
  var currentRoute = Get.currentRoute;
  if (currentRoute != screenNames) {
    Navigator.pushNamed(Get.context!, screenNames, arguments: arguments);
  }
}

goToScreenpopAndPushNamed({required String screenNames, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.popAndPushNamed(Get.context!, screenNames, arguments: arguments);
}

goBack() {
  FocusScope.of(Get.context!).unfocus();
  Navigator.pop(Get.context!);
}

goBackBottomNavigation() {
  FocusScope.of(Get.context!).unfocus();
  Navigator.pop(Get.context!);
}

//just navigate
navigateTo(context, state) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => state,
      ));
}

goToWithRemoveRoute(
    {required String screenName,
      Object? arguments,
      required BuildContext context}) {
  FocusScope.of(context).unfocus();
  var currentRoute = Get.currentRoute;

  if (currentRoute != screenName) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        screenName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  //Navigator.pushNamed(Get.context!, screenName);
}

goToIntro({required String screenName, Object? arguments}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.of(Get.context!)
      .pushNamedAndRemoveUntil(screenName, (Route<dynamic> route) => false);
  Navigator.pushNamed(Get.context!, screenName);
}

popUntilScreen({required String screenNames}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.of(Get.context!).popUntil(ModalRoute.withName(screenNames));
}

goToWidget({required Widget screen}) {
  FocusScope.of(Get.context!).unfocus();
  Navigator.push(Get.context!,
      MaterialPageRoute(builder: (BuildContext context) => screen));
}
