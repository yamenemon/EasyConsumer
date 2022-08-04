import 'package:carousel_slider/carousel_controller.dart';
import 'package:easy_consumer_flutter/data_provider/api_client.dart';
import 'package:flutter/cupertino.dart';

class LoginController extends ChangeNotifier {
  final apiClient = ApiClient();
  var activeIndex = 0;
  final CarouselController buttonCarouselController = CarouselController();
  var titleString = [
    "Pay Utility Bills or Mobile Recharge \n& Get Cashbacks",
    "Pay Utility Bills or Mobile Recharge \n& Get Cashbacks",
    "Pay Utility Bills or Mobile Recharge \n& Get Cashbacks"
  ];

  LoginController() {
    getCarouselData();
  }
  void moveDots(int index) {
    activeIndex = index;
    notifyListeners();
  }

  Future<void> getCarouselData() async {}
}
