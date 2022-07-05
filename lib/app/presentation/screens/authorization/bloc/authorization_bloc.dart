import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_bank/app/navigation/navigate_action.dart';
import 'package:power_bank/app/navigation/navigation_type.dart';
import 'package:power_bank/core/bloc/base_bloc_state.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/entities/phone_number.dart';
import 'package:power_bank/core/validation/validation_models.dart';
import 'package:power_bank/data/repositories/authorization_repository.dart';
import 'package:power_bank/domain/entities/network/settings.dart';
import 'package:power_bank/localization/app_localizations.dart';

part 'authorization_event.dart';
part 'authorization_bloc.freezed.dart';
part 'authorization_state.dart';

class AuthorizationBloc extends Bloc<AuthorizationEvent, AuthorizationState> {
  AuthorizationBloc({
    required this.authorizationRepository,
    required this.settings,
    required this.localization,
  }) : super(AuthorizationState()) {
    on<PhoneChanged>(_phoneChanged);
    on<SendCodeClicked>(_sendCodeClicked);
    on<PrivacyPolicyClicked>(_privacyPolicyClicked);
    on<BackClicked>(_backClicked);
  }

  AuthorizationRepository authorizationRepository;
  Settings settings;
  AppLocalizations localization;

  FutureOr<void> _phoneChanged(PhoneChanged event, Emitter<AuthorizationState> emit) {
      bool isValid = event.phone.getRawNumber().length == 11;
      emit(state.copyWith(phone: PhoneForm.pure(event.phone, isValid), buttonEnabled: isValid));
  }

  FutureOr<void> _sendCodeClicked(SendCodeClicked event, Emitter<AuthorizationState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateToConfirmPhone(NavigateType.push, phone: state.phone.value!)));
  }

  FutureOr<void> _privacyPolicyClicked(PrivacyPolicyClicked event, Emitter<AuthorizationState> emit) {

  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<AuthorizationState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: HideKeyboard(), numberEntering: false));
  }
}
