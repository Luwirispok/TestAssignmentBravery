import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/core/bloc/base_bloc_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_bank/core/failures.dart';
import 'package:power_bank/core/utils/base_error_handler.dart';
import 'package:power_bank/core/validation/email.dart';
import 'package:power_bank/data/gateways/local/preferences_local_gateway.dart';
import 'package:power_bank/data/repositories/contacts_repository.dart';
import 'package:power_bank/domain/entities/network/contacts.dart';
import 'package:power_bank/localization/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/validation/default_form.dart';

part 'contacts_state.dart';

part 'contacts_event.dart';

part 'contacts_bloc.freezed.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc({
    required this.preferencesLocalGateway,
    required this.contactsRepository,
    required this.localization,
  }) : super(ContactsState()) {
    on<Init>(_init);
    on<PhoneClicked>(_phoneClicked);
    on<TopicChanged>(_topicChanged);
    on<EmailChanged>(_emailChanged);
    on<MessageChanged>(_messageChanged);
    on<SendClicked>(_sendClicked);
    this.add(ContactsEvent.init());
  }

  final PreferencesLocalGateway preferencesLocalGateway;
  final ContactsRepository contactsRepository;
  final AppLocalizations localization;

  bool get _fieldsIsValid => state.emailForm.valid && state.topicForm.valid && state.messageForm.valid;

  FutureOr<void> _init(Init event, Emitter<ContactsState> emit) async {
    await _getContacts(emit);
  }

  FutureOr<void> _getContacts(Emitter<ContactsState> emit) async {
    List<String> address = ['Москва, Красноармейская слобода, д. 13'];
    List<String> phones = ['+7 900 888 72 99', '+7 920 345 77 88'];

    emit(state.copyWith(action: null));
    if (address != null && phones != null) {
      emit(state.copyWith(
        addresses: address,
        phones: phones,
      ));
    }
  }

  FutureOr<void> _phoneClicked(PhoneClicked event, Emitter<ContactsState> emit) async {
    String url = "tel:${event.phone.replaceAll(new RegExp(r"\s+\b|\b\s"), "")}";
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  FutureOr<void> _topicChanged(TopicChanged event, Emitter<ContactsState> emit) {
    emit(state.copyWith(topicForm: event.topicForm));
  }

  FutureOr<void> _emailChanged(EmailChanged event, Emitter<ContactsState> emit) {
    emit(state.copyWith(emailForm: event.emailForm));
  }

  FutureOr<void> _messageChanged(MessageChanged event, Emitter<ContactsState> emit) {
    emit(state.copyWith(messageForm: event.messageForm));
  }

  FutureOr<void> _sendClicked(SendClicked event, Emitter<ContactsState> emit) {
    if (_fieldsIsValid) {
      emit(state.copyWith(action: UnFocusAction()));
      emit(state.copyWith(
        action: ShowSnackBarMessage(message: localization.feedbackSent),
        topicForm: DefaultForm.pure(),
        emailForm: EmailForm.pure(),
        messageForm: DefaultForm.pure(),
      ));
    } else {
      emit(state.copyWith(action: ShowSnackBarMessage(message: 'Данные заполнены некорректно', error: true)));
    }
  }
}
