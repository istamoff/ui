import 'package:flutter/cupertino.dart';

enum LayoutGroup {
  nonScrollable,
  scrollable
}
enum LayoutTypes{
  pageView,
  list,
  sliver,
  hero,
  nested
}
abstract class HasLayoutGroup{
  LayoutGroup get layoutgroup;
  VoidCallback get onLayoutToggle;
}

Map<LayoutTypes , String> layoutNames = {
  LayoutTypes.pageView : 'PageView',
  LayoutTypes.list : 'List',
  LayoutTypes.sliver : 'Sliver',
  LayoutTypes.hero : 'Hero',
  LayoutTypes.nested : 'Nested'
};