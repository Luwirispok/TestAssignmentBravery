import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_bank/app/navigation/navigate_action.dart';
import 'package:power_bank/app/navigation/navigation_type.dart';
import 'package:power_bank/core/bloc/base_bloc_state.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/entities/phone_number.dart';
import 'package:power_bank/core/failures.dart';
import 'package:power_bank/core/utils/base_error_handler.dart';
import 'package:power_bank/core/validation/validation_models.dart';
import 'package:power_bank/data/repositories/authorization_repository.dart';
import 'package:power_bank/di/injection.dart';
import 'package:power_bank/domain/entities/network/settings.dart';
import 'package:power_bank/localization/app_localizations.dart';

import '../../../../../data/gateways/local/preferences_local_gateway.dart';
import '../../../../../data/repositories/user_repository.dart';
import '../../../../../domain/enums/menu_item.dart';

part 'navigation_event.dart';

part 'navigation_bloc.freezed.dart';

part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc({
    required Settings settings,
    required PhoneNumber phone,
    required this.localization,
  }) : super(NavigationState(phone: phone, settings: settings)) {
    on<Init>(_init);
    on<MenuItemSelected>(_menuItemSelected);
    on<MenuClicked>(_menuClicked);
    on<DrawerStateChanged>(_drawerStateChanged);
    on<BackClicked>(_backClicked);
    add(NavigationEvent.init());
  }

  AppLocalizations localization;

  FutureOr<void> _init(Init event, Emitter<NavigationState> emit) {}

  FutureOr<void> _menuItemSelected(MenuItemSelected event, Emitter<NavigationState> emit) async {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: CloseDrawer(), pressedMenuItem: event.item, drawerIsOpen: false));
    if (event.item == MenuItemType.exit) {
      //await Locator.unregisterUser();
      emit(
        state.copyWith(
          action: NavigateAction.navigateToAuthorization(NavigateType.pushAndRemoveUntil),
        ),
      );
    }
  }

  FutureOr<void> _menuClicked(MenuClicked event, Emitter<NavigationState> emit) {
    emit(state.copyWith(action: null));
    if (state.drawerIsOpen) {
      emit(state.copyWith(action: CloseDrawer(), drawerIsOpen: false));
    } else {
      emit(state.copyWith(action: OpenDrawer(), drawerIsOpen: true));
    }
  }

  FutureOr<void> _drawerStateChanged(DrawerStateChanged event, Emitter<NavigationState> emit) {
    emit(state.copyWith(drawerIsOpen: event.isOpen));
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<NavigationState> emit) {
    if (state.drawerIsOpen) {
      emit(state.copyWith(action: null));
      emit(state.copyWith(action: CloseDrawer()));
    } else {
      SystemNavigator.pop();
    }
  }
}
