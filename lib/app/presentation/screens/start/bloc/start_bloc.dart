import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_bank/app/navigation/navigate_action.dart';
import 'package:power_bank/app/navigation/navigation_type.dart';
import 'package:power_bank/core/bloc/base_bloc_state.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/entities/phone_number.dart';
import 'package:power_bank/core/failures.dart';
import 'package:power_bank/data/gateways/local/preferences_local_gateway.dart';
import 'package:power_bank/data/repositories/product_rent_repository.dart';
import 'package:power_bank/data/repositories/settings_repository.dart';
import 'package:power_bank/data/repositories/user_repository.dart';
import 'package:power_bank/di/injection.dart';
import 'package:power_bank/domain/entities/network/product_rent.dart';
import 'package:power_bank/domain/entities/network/settings.dart';
import 'package:power_bank/domain/entities/network/user.dart';
import 'package:power_bank/domain/enums/product_rent_status.dart';

part 'start_bloc.freezed.dart';

part 'start_event.dart';

part 'start_state.dart';

class StartBloc extends Bloc<StartEvent, StartState> {
  StartBloc({
    required this.preferencesLocalGateway,
    required this.productRentRepository,
    required this.settingsRepository,
    required this.userRepository,
  }) : super(StartState()) {
    on<Init>(_init);
    on<RepeatClicked>(_repeatClicked);
    this.add(StartEvent.init());
  }

  PreferencesLocalGateway preferencesLocalGateway;
  ProductRentRepository productRentRepository;
  SettingsRepository settingsRepository;
  UserRepository userRepository;

  FutureOr<void> _init(Init event, Emitter<StartState> emit) async {
    await _getData(emit);
  }

  Future<void> _getData(Emitter<StartState> emit) async {
    Either<Settings?, Failure> result = await settingsRepository.getSettings();
    Settings? settings;
    Failure? error;
    result.fold(
      (data) => settings = data,
      (failure) => error = failure,
    );

    bool skipRegistration = false;
    emit(state.copyWith(action: null));
    if (settings != null) {
      await Locator.registerSettings(settings!);
      emit(state.copyWith(action: RegisterLocalization()));
      if (skipRegistration) {
        emit(state.copyWith(
            action: NavigateAction.navigateToNavigation(
              NavigateType.pushReplacement,
          settings: settings!,
          phone: PhoneNumber(formattedNumber: '+7 999 888 77 66', dialCode: '+7', isoCode: '+7', phoneNumber: '79998887766'),
        )));
      } else {
        emit(state.copyWith(action: NavigateAction.navigateToAuthorization(NavigateType.pushReplacement)));
      }
    } else {
      emit(state.copyWith(action: ShowErrorMessage()));
    }
  }

  Future<FutureOr<void>> _repeatClicked(
    RepeatClicked event,
    Emitter<StartState> emit,
  ) async {
    await _getData(emit);
  }
}
