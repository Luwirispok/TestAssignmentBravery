part of 'navigation_bloc.dart';

@freezed
class NavigationState extends BaseBlocState with _$NavigationState {
  factory NavigationState({
    BlocAction? action,
    required PhoneNumber phone,
    required Settings settings,
    @Default(true) bool isLoading,
    @Default(false) bool drawerIsOpen,
    @Default(MenuItemType.values) List<MenuItemType> menuItems,
    @Default(MenuItemType.findPowerBank) MenuItemType pressedMenuItem,
  }) = _NavigationState;
}

class OpenDrawer extends BlocAction {

}

class CloseDrawer extends BlocAction {

}