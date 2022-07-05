// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

  Init init() {
    return Init();
  }

  MenuClicked menuClicked() {
    return MenuClicked();
  }

  DrawerStateChanged drawerStateChanged(bool isOpen) {
    return DrawerStateChanged(
      isOpen,
    );
  }

  MenuItemSelected menuItemSelected(MenuItemType item) {
    return MenuItemSelected(
      item,
    );
  }

  BackClicked backClicked() {
    return BackClicked();
  }
}

/// @nodoc
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$NavigationEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  _$Init();

  @override
  String toString() {
    return 'NavigationEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements NavigationEvent {
  factory Init() = _$Init;
}

/// @nodoc
abstract class $MenuClickedCopyWith<$Res> {
  factory $MenuClickedCopyWith(
          MenuClicked value, $Res Function(MenuClicked) then) =
      _$MenuClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenuClickedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $MenuClickedCopyWith<$Res> {
  _$MenuClickedCopyWithImpl(
      MenuClicked _value, $Res Function(MenuClicked) _then)
      : super(_value, (v) => _then(v as MenuClicked));

  @override
  MenuClicked get _value => super._value as MenuClicked;
}

/// @nodoc

class _$MenuClicked implements MenuClicked {
  _$MenuClicked();

  @override
  String toString() {
    return 'NavigationEvent.menuClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MenuClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) {
    return menuClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) {
    return menuClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) {
    if (menuClicked != null) {
      return menuClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return menuClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) {
    return menuClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (menuClicked != null) {
      return menuClicked(this);
    }
    return orElse();
  }
}

abstract class MenuClicked implements NavigationEvent {
  factory MenuClicked() = _$MenuClicked;
}

/// @nodoc
abstract class $DrawerStateChangedCopyWith<$Res> {
  factory $DrawerStateChangedCopyWith(
          DrawerStateChanged value, $Res Function(DrawerStateChanged) then) =
      _$DrawerStateChangedCopyWithImpl<$Res>;
  $Res call({bool isOpen});
}

/// @nodoc
class _$DrawerStateChangedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $DrawerStateChangedCopyWith<$Res> {
  _$DrawerStateChangedCopyWithImpl(
      DrawerStateChanged _value, $Res Function(DrawerStateChanged) _then)
      : super(_value, (v) => _then(v as DrawerStateChanged));

  @override
  DrawerStateChanged get _value => super._value as DrawerStateChanged;

  @override
  $Res call({
    Object? isOpen = freezed,
  }) {
    return _then(DrawerStateChanged(
      isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DrawerStateChanged implements DrawerStateChanged {
  _$DrawerStateChanged(this.isOpen);

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'NavigationEvent.drawerStateChanged(isOpen: $isOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DrawerStateChanged &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isOpen));

  @JsonKey(ignore: true)
  @override
  $DrawerStateChangedCopyWith<DrawerStateChanged> get copyWith =>
      _$DrawerStateChangedCopyWithImpl<DrawerStateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) {
    return drawerStateChanged(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) {
    return drawerStateChanged?.call(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) {
    if (drawerStateChanged != null) {
      return drawerStateChanged(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return drawerStateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) {
    return drawerStateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (drawerStateChanged != null) {
      return drawerStateChanged(this);
    }
    return orElse();
  }
}

abstract class DrawerStateChanged implements NavigationEvent {
  factory DrawerStateChanged(bool isOpen) = _$DrawerStateChanged;

  bool get isOpen;
  @JsonKey(ignore: true)
  $DrawerStateChangedCopyWith<DrawerStateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemSelectedCopyWith<$Res> {
  factory $MenuItemSelectedCopyWith(
          MenuItemSelected value, $Res Function(MenuItemSelected) then) =
      _$MenuItemSelectedCopyWithImpl<$Res>;
  $Res call({MenuItemType item});
}

/// @nodoc
class _$MenuItemSelectedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $MenuItemSelectedCopyWith<$Res> {
  _$MenuItemSelectedCopyWithImpl(
      MenuItemSelected _value, $Res Function(MenuItemSelected) _then)
      : super(_value, (v) => _then(v as MenuItemSelected));

  @override
  MenuItemSelected get _value => super._value as MenuItemSelected;

  @override
  $Res call({
    Object? item = freezed,
  }) {
    return _then(MenuItemSelected(
      item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as MenuItemType,
    ));
  }
}

/// @nodoc

class _$MenuItemSelected implements MenuItemSelected {
  _$MenuItemSelected(this.item);

  @override
  final MenuItemType item;

  @override
  String toString() {
    return 'NavigationEvent.menuItemSelected(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuItemSelected &&
            const DeepCollectionEquality().equals(other.item, item));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(item));

  @JsonKey(ignore: true)
  @override
  $MenuItemSelectedCopyWith<MenuItemSelected> get copyWith =>
      _$MenuItemSelectedCopyWithImpl<MenuItemSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) {
    return menuItemSelected(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) {
    return menuItemSelected?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) {
    if (menuItemSelected != null) {
      return menuItemSelected(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return menuItemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) {
    return menuItemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (menuItemSelected != null) {
      return menuItemSelected(this);
    }
    return orElse();
  }
}

abstract class MenuItemSelected implements NavigationEvent {
  factory MenuItemSelected(MenuItemType item) = _$MenuItemSelected;

  MenuItemType get item;
  @JsonKey(ignore: true)
  $MenuItemSelectedCopyWith<MenuItemSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackClickedCopyWith<$Res> {
  factory $BackClickedCopyWith(
          BackClicked value, $Res Function(BackClicked) then) =
      _$BackClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BackClickedCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements $BackClickedCopyWith<$Res> {
  _$BackClickedCopyWithImpl(
      BackClicked _value, $Res Function(BackClicked) _then)
      : super(_value, (v) => _then(v as BackClicked));

  @override
  BackClicked get _value => super._value as BackClicked;
}

/// @nodoc

class _$BackClicked implements BackClicked {
  _$BackClicked();

  @override
  String toString() {
    return 'NavigationEvent.backClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BackClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() menuClicked,
    required TResult Function(bool isOpen) drawerStateChanged,
    required TResult Function(MenuItemType item) menuItemSelected,
    required TResult Function() backClicked,
  }) {
    return backClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
  }) {
    return backClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? menuClicked,
    TResult Function(bool isOpen)? drawerStateChanged,
    TResult Function(MenuItemType item)? menuItemSelected,
    TResult Function()? backClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(MenuClicked value) menuClicked,
    required TResult Function(DrawerStateChanged value) drawerStateChanged,
    required TResult Function(MenuItemSelected value) menuItemSelected,
    required TResult Function(BackClicked value) backClicked,
  }) {
    return backClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
  }) {
    return backClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(MenuClicked value)? menuClicked,
    TResult Function(DrawerStateChanged value)? drawerStateChanged,
    TResult Function(MenuItemSelected value)? menuItemSelected,
    TResult Function(BackClicked value)? backClicked,
    required TResult orElse(),
  }) {
    if (backClicked != null) {
      return backClicked(this);
    }
    return orElse();
  }
}

abstract class BackClicked implements NavigationEvent {
  factory BackClicked() = _$BackClicked;
}

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  _NavigationState call(
      {BlocAction? action,
      required PhoneNumber phone,
      required Settings settings,
      bool isLoading = true,
      bool drawerIsOpen = false,
      List<MenuItemType> menuItems = MenuItemType.values,
      MenuItemType pressedMenuItem = MenuItemType.findPowerBank}) {
    return _NavigationState(
      action: action,
      phone: phone,
      settings: settings,
      isLoading: isLoading,
      drawerIsOpen: drawerIsOpen,
      menuItems: menuItems,
      pressedMenuItem: pressedMenuItem,
    );
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  BlocAction? get action => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  Settings get settings => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get drawerIsOpen => throw _privateConstructorUsedError;
  List<MenuItemType> get menuItems => throw _privateConstructorUsedError;
  MenuItemType get pressedMenuItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      PhoneNumber phone,
      Settings settings,
      bool isLoading,
      bool drawerIsOpen,
      List<MenuItemType> menuItems,
      MenuItemType pressedMenuItem});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? phone = freezed,
    Object? settings = freezed,
    Object? isLoading = freezed,
    Object? drawerIsOpen = freezed,
    Object? menuItems = freezed,
    Object? pressedMenuItem = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerIsOpen: drawerIsOpen == freezed
          ? _value.drawerIsOpen
          : drawerIsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      menuItems: menuItems == freezed
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItemType>,
      pressedMenuItem: pressedMenuItem == freezed
          ? _value.pressedMenuItem
          : pressedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItemType,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      PhoneNumber phone,
      Settings settings,
      bool isLoading,
      bool drawerIsOpen,
      List<MenuItemType> menuItems,
      MenuItemType pressedMenuItem});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object? action = freezed,
    Object? phone = freezed,
    Object? settings = freezed,
    Object? isLoading = freezed,
    Object? drawerIsOpen = freezed,
    Object? menuItems = freezed,
    Object? pressedMenuItem = freezed,
  }) {
    return _then(_NavigationState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      drawerIsOpen: drawerIsOpen == freezed
          ? _value.drawerIsOpen
          : drawerIsOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      menuItems: menuItems == freezed
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItemType>,
      pressedMenuItem: pressedMenuItem == freezed
          ? _value.pressedMenuItem
          : pressedMenuItem // ignore: cast_nullable_to_non_nullable
              as MenuItemType,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  _$_NavigationState(
      {this.action,
      required this.phone,
      required this.settings,
      this.isLoading = true,
      this.drawerIsOpen = false,
      this.menuItems = MenuItemType.values,
      this.pressedMenuItem = MenuItemType.findPowerBank});

  @override
  final BlocAction? action;
  @override
  final PhoneNumber phone;
  @override
  final Settings settings;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool drawerIsOpen;
  @JsonKey()
  @override
  final List<MenuItemType> menuItems;
  @JsonKey()
  @override
  final MenuItemType pressedMenuItem;

  @override
  String toString() {
    return 'NavigationState(action: $action, phone: $phone, settings: $settings, isLoading: $isLoading, drawerIsOpen: $drawerIsOpen, menuItems: $menuItems, pressedMenuItem: $pressedMenuItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NavigationState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.drawerIsOpen, drawerIsOpen) &&
            const DeepCollectionEquality().equals(other.menuItems, menuItems) &&
            const DeepCollectionEquality()
                .equals(other.pressedMenuItem, pressedMenuItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(drawerIsOpen),
      const DeepCollectionEquality().hash(menuItems),
      const DeepCollectionEquality().hash(pressedMenuItem));

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  factory _NavigationState(
      {BlocAction? action,
      required PhoneNumber phone,
      required Settings settings,
      bool isLoading,
      bool drawerIsOpen,
      List<MenuItemType> menuItems,
      MenuItemType pressedMenuItem}) = _$_NavigationState;

  @override
  BlocAction? get action;
  @override
  PhoneNumber get phone;
  @override
  Settings get settings;
  @override
  bool get isLoading;
  @override
  bool get drawerIsOpen;
  @override
  List<MenuItemType> get menuItems;
  @override
  MenuItemType get pressedMenuItem;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}
