import 'package:flutter/foundation.dart';

class navigationnumber extends ChangeNotifier {
  late int pagenumber;

  void initializenavbar() {
    pagenumber = 0;
  }

  void clicked(int i) {
    pagenumber = i;
    notifyListeners();
  }
}
