part of 'navigation_bloc.dart';

@freezed
class NavigationEvent {
  factory NavigationEvent.init() = Init;
  factory NavigationEvent.menuClicked() = MenuClicked;
  factory NavigationEvent.drawerStateChanged(bool isOpen) = DrawerStateChanged;
  factory NavigationEvent.menuItemSelected(MenuItemType item) = MenuItemSelected;
  factory NavigationEvent.backClicked() = BackClicked;
}
