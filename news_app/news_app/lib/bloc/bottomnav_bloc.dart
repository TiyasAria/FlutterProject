import 'dart:async';

import 'package:news_app/utils/enum.dart';

class BottomNavBloc{
  final StreamController<NavBarItem> _navbarItem = StreamController<NavBarItem>.broadcast();
  NavBarItem defaultItem = NavBarItem.Home;
  Stream<NavBarItem> get itemStream => _navbarItem.stream;
}