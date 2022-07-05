import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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

part 'confirm_phone_event.dart';

part 'confirm_phone_bloc.freezed.dart';

part 'confirm_phone_state.dart';

class ConfirmPhoneBloc extends Bloc<ConfirmPhoneEvent, ConfirmPhoneState> {
  ConfirmPhoneBloc({
    required PhoneNumber phone,
    required this.authorizationRepository,
    required this.localization,
    required this.preferencesLocalGateway,
    required this.userRepository,
  }) : super(ConfirmPhoneState(phone: phone)) {
    on<Init>(_init);
    on<ResendCodeClicked>(_resendCodeClicked);
    on<CountOfSecondsToResendChanged>(_countOfSecondsToResendChanged);
    on<CodeChanged>(_codeChanged);
    on<EnterClicked>(_enterClicked);
    on<BackClicked>(_backClicked);
    add(ConfirmPhoneEvent.init());
  }

  AuthorizationRepository authorizationRepository;
  UserRepository userRepository;
  AppLocalizations localization;
  PreferencesLocalGateway preferencesLocalGateway;

  String? confirmCode;
  Timer? _timer;
  int _currentCountSecondsToResend = 0;
  static const int _countSecondsToResend = 30;

  FutureOr<void> _init(Init event, Emitter<ConfirmPhoneState> emit) async {
    await Future.delayed(Duration(milliseconds: 500));
    _sendCode(emit);
    _resetTimer();
  }

  FutureOr<void> _resendCodeClicked(ResendCodeClicked event, Emitter<ConfirmPhoneState> emit) {
    _sendCode(emit);
    _resetTimer();
  }

  FutureOr<void> _countOfSecondsToResendChanged(CountOfSecondsToResendChanged event, Emitter<ConfirmPhoneState> emit) {
    emit(state.copyWith(countOfSecondsToResend: event.countSecondsToResendChanged));
  }

  FutureOr<void> _codeChanged(CodeChanged event, Emitter<ConfirmPhoneState> emit) {
    emit(state.copyWith(code: event.code));
  }

  FutureOr<void> _enterClicked(EnterClicked event, Emitter<ConfirmPhoneState> emit) {
    emit(state.copyWith(action: null));
    if (state.code == confirmCode) {
      emit(state.copyWith(
          action: NavigateAction.navigateToNavigation(
        NavigateType.push,
        settings: Locator.injection(),
            phone: state.phone,
      )));
    } else{
      emit(state.copyWith(action: ShowSnackBarMessage(message: 'Неверный код!', error: true)));
    }
  }

  FutureOr<void> _backClicked(BackClicked event, Emitter<ConfirmPhoneState> emit) {
    emit(state.copyWith(action: null));
    emit(state.copyWith(action: NavigateAction.navigateBack()));
  }

  void _resetTimer(){
    _timer?.cancel();
    _currentCountSecondsToResend = _countSecondsToResend;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(_currentCountSecondsToResend > 0){
        add(CountOfSecondsToResendChanged(--_currentCountSecondsToResend));
      } else {
        timer.cancel();
      }
    },);
  }

  void _generateCode() {
    int min = 10000;
    int max = 100000;
    int code = min + Random().nextInt(max - min);
    confirmCode = code.toString();
    print('Код авторизации: $confirmCode');
  }

  Future<void> _sendCode(Emitter<ConfirmPhoneState> emit) async {
    _generateCode();
    emit(state.copyWith(action: null));
    emit(state.copyWith(
      action: ShowSnackBarMessage(message: 'Ваш код $confirmCode'),
      // code: confirmCode,
    ));
  }
}
