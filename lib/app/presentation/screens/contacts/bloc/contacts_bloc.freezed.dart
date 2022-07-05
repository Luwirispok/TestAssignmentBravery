// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ContactsStateTearOff {
  const _$ContactsStateTearOff();

  _ContactsState call(
      {BlocAction? action,
      dynamic isLoading = false,
      List<String> addresses = const ['Москва, Красноармейская слобода, д. 13'],
      List<String> phones = const ['+7 900 888 72 99', '+7 920 345 77 88'],
      DefaultForm topicForm = const DefaultForm.pure(''),
      EmailForm emailForm = const EmailForm.pure(''),
      DefaultForm messageForm = const DefaultForm.pure('')}) {
    return _ContactsState(
      action: action,
      isLoading: isLoading,
      addresses: addresses,
      phones: phones,
      topicForm: topicForm,
      emailForm: emailForm,
      messageForm: messageForm,
    );
  }
}

/// @nodoc
const $ContactsState = _$ContactsStateTearOff();

/// @nodoc
mixin _$ContactsState {
  BlocAction? get action => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  List<String> get addresses => throw _privateConstructorUsedError;
  List<String> get phones => throw _privateConstructorUsedError;
  DefaultForm get topicForm => throw _privateConstructorUsedError;
  EmailForm get emailForm => throw _privateConstructorUsedError;
  DefaultForm get messageForm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactsStateCopyWith<ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res>;
  $Res call(
      {BlocAction? action,
      dynamic isLoading,
      List<String> addresses,
      List<String> phones,
      DefaultForm topicForm,
      EmailForm emailForm,
      DefaultForm messageForm});
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  final ContactsState _value;
  // ignore: unused_field
  final $Res Function(ContactsState) _then;

  @override
  $Res call({
    Object? action = freezed,
    Object? isLoading = freezed,
    Object? addresses = freezed,
    Object? phones = freezed,
    Object? topicForm = freezed,
    Object? emailForm = freezed,
    Object? messageForm = freezed,
  }) {
    return _then(_value.copyWith(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topicForm: topicForm == freezed
          ? _value.topicForm
          : topicForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
      emailForm: emailForm == freezed
          ? _value.emailForm
          : emailForm // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      messageForm: messageForm == freezed
          ? _value.messageForm
          : messageForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
    ));
  }
}

/// @nodoc
abstract class _$ContactsStateCopyWith<$Res>
    implements $ContactsStateCopyWith<$Res> {
  factory _$ContactsStateCopyWith(
          _ContactsState value, $Res Function(_ContactsState) then) =
      __$ContactsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {BlocAction? action,
      dynamic isLoading,
      List<String> addresses,
      List<String> phones,
      DefaultForm topicForm,
      EmailForm emailForm,
      DefaultForm messageForm});
}

/// @nodoc
class __$ContactsStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$ContactsStateCopyWith<$Res> {
  __$ContactsStateCopyWithImpl(
      _ContactsState _value, $Res Function(_ContactsState) _then)
      : super(_value, (v) => _then(v as _ContactsState));

  @override
  _ContactsState get _value => super._value as _ContactsState;

  @override
  $Res call({
    Object? action = freezed,
    Object? isLoading = freezed,
    Object? addresses = freezed,
    Object? phones = freezed,
    Object? topicForm = freezed,
    Object? emailForm = freezed,
    Object? messageForm = freezed,
  }) {
    return _then(_ContactsState(
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as BlocAction?,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      addresses: addresses == freezed
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      phones: phones == freezed
          ? _value.phones
          : phones // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topicForm: topicForm == freezed
          ? _value.topicForm
          : topicForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
      emailForm: emailForm == freezed
          ? _value.emailForm
          : emailForm // ignore: cast_nullable_to_non_nullable
              as EmailForm,
      messageForm: messageForm == freezed
          ? _value.messageForm
          : messageForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
    ));
  }
}

/// @nodoc

class _$_ContactsState implements _ContactsState {
  _$_ContactsState(
      {this.action,
      this.isLoading = false,
      this.addresses = const ['Москва, Красноармейская слобода, д. 13'],
      this.phones = const ['+7 900 888 72 99', '+7 920 345 77 88'],
      this.topicForm = const DefaultForm.pure(''),
      this.emailForm = const EmailForm.pure(''),
      this.messageForm = const DefaultForm.pure('')});

  @override
  final BlocAction? action;
  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final List<String> addresses;
  @JsonKey()
  @override
  final List<String> phones;
  @JsonKey()
  @override
  final DefaultForm topicForm;
  @JsonKey()
  @override
  final EmailForm emailForm;
  @JsonKey()
  @override
  final DefaultForm messageForm;

  @override
  String toString() {
    return 'ContactsState(action: $action, isLoading: $isLoading, addresses: $addresses, phones: $phones, topicForm: $topicForm, emailForm: $emailForm, messageForm: $messageForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContactsState &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.addresses, addresses) &&
            const DeepCollectionEquality().equals(other.phones, phones) &&
            const DeepCollectionEquality().equals(other.topicForm, topicForm) &&
            const DeepCollectionEquality().equals(other.emailForm, emailForm) &&
            const DeepCollectionEquality()
                .equals(other.messageForm, messageForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(addresses),
      const DeepCollectionEquality().hash(phones),
      const DeepCollectionEquality().hash(topicForm),
      const DeepCollectionEquality().hash(emailForm),
      const DeepCollectionEquality().hash(messageForm));

  @JsonKey(ignore: true)
  @override
  _$ContactsStateCopyWith<_ContactsState> get copyWith =>
      __$ContactsStateCopyWithImpl<_ContactsState>(this, _$identity);
}

abstract class _ContactsState implements ContactsState {
  factory _ContactsState(
      {BlocAction? action,
      dynamic isLoading,
      List<String> addresses,
      List<String> phones,
      DefaultForm topicForm,
      EmailForm emailForm,
      DefaultForm messageForm}) = _$_ContactsState;

  @override
  BlocAction? get action;
  @override
  dynamic get isLoading;
  @override
  List<String> get addresses;
  @override
  List<String> get phones;
  @override
  DefaultForm get topicForm;
  @override
  EmailForm get emailForm;
  @override
  DefaultForm get messageForm;
  @override
  @JsonKey(ignore: true)
  _$ContactsStateCopyWith<_ContactsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ContactsEventTearOff {
  const _$ContactsEventTearOff();

  Init init() {
    return const Init();
  }

  PhoneClicked phoneClicked(String phone) {
    return PhoneClicked(
      phone,
    );
  }

  TopicChanged topicChanged(DefaultForm topicForm) {
    return TopicChanged(
      topicForm,
    );
  }

  EmailChanged emailChanged(EmailForm emailForm) {
    return EmailChanged(
      emailForm,
    );
  }

  MessageChanged messageChanged(DefaultForm messageForm) {
    return MessageChanged(
      messageForm,
    );
  }

  SendClicked sendClicked() {
    return const SendClicked();
  }
}

/// @nodoc
const $ContactsEvent = _$ContactsEventTearOff();

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  final ContactsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactsEvent) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'ContactsEvent.init()';
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
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
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
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements ContactsEvent {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $PhoneClickedCopyWith<$Res> {
  factory $PhoneClickedCopyWith(
          PhoneClicked value, $Res Function(PhoneClicked) then) =
      _$PhoneClickedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneClickedCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $PhoneClickedCopyWith<$Res> {
  _$PhoneClickedCopyWithImpl(
      PhoneClicked _value, $Res Function(PhoneClicked) _then)
      : super(_value, (v) => _then(v as PhoneClicked));

  @override
  PhoneClicked get _value => super._value as PhoneClicked;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(PhoneClicked(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneClicked implements PhoneClicked {
  const _$PhoneClicked(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'ContactsEvent.phoneClicked(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneClicked &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  $PhoneClickedCopyWith<PhoneClicked> get copyWith =>
      _$PhoneClickedCopyWithImpl<PhoneClicked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return phoneClicked(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return phoneClicked?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) {
    if (phoneClicked != null) {
      return phoneClicked(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return phoneClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return phoneClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (phoneClicked != null) {
      return phoneClicked(this);
    }
    return orElse();
  }
}

abstract class PhoneClicked implements ContactsEvent {
  const factory PhoneClicked(String phone) = _$PhoneClicked;

  String get phone;
  @JsonKey(ignore: true)
  $PhoneClickedCopyWith<PhoneClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopicChangedCopyWith<$Res> {
  factory $TopicChangedCopyWith(
          TopicChanged value, $Res Function(TopicChanged) then) =
      _$TopicChangedCopyWithImpl<$Res>;
  $Res call({DefaultForm topicForm});
}

/// @nodoc
class _$TopicChangedCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $TopicChangedCopyWith<$Res> {
  _$TopicChangedCopyWithImpl(
      TopicChanged _value, $Res Function(TopicChanged) _then)
      : super(_value, (v) => _then(v as TopicChanged));

  @override
  TopicChanged get _value => super._value as TopicChanged;

  @override
  $Res call({
    Object? topicForm = freezed,
  }) {
    return _then(TopicChanged(
      topicForm == freezed
          ? _value.topicForm
          : topicForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
    ));
  }
}

/// @nodoc

class _$TopicChanged implements TopicChanged {
  const _$TopicChanged(this.topicForm);

  @override
  final DefaultForm topicForm;

  @override
  String toString() {
    return 'ContactsEvent.topicChanged(topicForm: $topicForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopicChanged &&
            const DeepCollectionEquality().equals(other.topicForm, topicForm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(topicForm));

  @JsonKey(ignore: true)
  @override
  $TopicChangedCopyWith<TopicChanged> get copyWith =>
      _$TopicChangedCopyWithImpl<TopicChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return topicChanged(topicForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return topicChanged?.call(topicForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) {
    if (topicChanged != null) {
      return topicChanged(topicForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return topicChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return topicChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (topicChanged != null) {
      return topicChanged(this);
    }
    return orElse();
  }
}

abstract class TopicChanged implements ContactsEvent {
  const factory TopicChanged(DefaultForm topicForm) = _$TopicChanged;

  DefaultForm get topicForm;
  @JsonKey(ignore: true)
  $TopicChangedCopyWith<TopicChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({EmailForm emailForm});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailForm = freezed,
  }) {
    return _then(EmailChanged(
      emailForm == freezed
          ? _value.emailForm
          : emailForm // ignore: cast_nullable_to_non_nullable
              as EmailForm,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailForm);

  @override
  final EmailForm emailForm;

  @override
  String toString() {
    return 'ContactsEvent.emailChanged(emailForm: $emailForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality().equals(other.emailForm, emailForm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailForm));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return emailChanged(emailForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return emailChanged?.call(emailForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ContactsEvent {
  const factory EmailChanged(EmailForm emailForm) = _$EmailChanged;

  EmailForm get emailForm;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChangedCopyWith<$Res> {
  factory $MessageChangedCopyWith(
          MessageChanged value, $Res Function(MessageChanged) then) =
      _$MessageChangedCopyWithImpl<$Res>;
  $Res call({DefaultForm messageForm});
}

/// @nodoc
class _$MessageChangedCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $MessageChangedCopyWith<$Res> {
  _$MessageChangedCopyWithImpl(
      MessageChanged _value, $Res Function(MessageChanged) _then)
      : super(_value, (v) => _then(v as MessageChanged));

  @override
  MessageChanged get _value => super._value as MessageChanged;

  @override
  $Res call({
    Object? messageForm = freezed,
  }) {
    return _then(MessageChanged(
      messageForm == freezed
          ? _value.messageForm
          : messageForm // ignore: cast_nullable_to_non_nullable
              as DefaultForm,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.messageForm);

  @override
  final DefaultForm messageForm;

  @override
  String toString() {
    return 'ContactsEvent.messageChanged(messageForm: $messageForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageChanged &&
            const DeepCollectionEquality()
                .equals(other.messageForm, messageForm));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(messageForm));

  @JsonKey(ignore: true)
  @override
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      _$MessageChangedCopyWithImpl<MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return messageChanged(messageForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return messageChanged?.call(messageForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(messageForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements ContactsEvent {
  const factory MessageChanged(DefaultForm messageForm) = _$MessageChanged;

  DefaultForm get messageForm;
  @JsonKey(ignore: true)
  $MessageChangedCopyWith<MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendClickedCopyWith<$Res> {
  factory $SendClickedCopyWith(
          SendClicked value, $Res Function(SendClicked) then) =
      _$SendClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendClickedCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $SendClickedCopyWith<$Res> {
  _$SendClickedCopyWithImpl(
      SendClicked _value, $Res Function(SendClicked) _then)
      : super(_value, (v) => _then(v as SendClicked));

  @override
  SendClicked get _value => super._value as SendClicked;
}

/// @nodoc

class _$SendClicked implements SendClicked {
  const _$SendClicked();

  @override
  String toString() {
    return 'ContactsEvent.sendClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SendClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String phone) phoneClicked,
    required TResult Function(DefaultForm topicForm) topicChanged,
    required TResult Function(EmailForm emailForm) emailChanged,
    required TResult Function(DefaultForm messageForm) messageChanged,
    required TResult Function() sendClicked,
  }) {
    return sendClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
  }) {
    return sendClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String phone)? phoneClicked,
    TResult Function(DefaultForm topicForm)? topicChanged,
    TResult Function(EmailForm emailForm)? emailChanged,
    TResult Function(DefaultForm messageForm)? messageChanged,
    TResult Function()? sendClicked,
    required TResult orElse(),
  }) {
    if (sendClicked != null) {
      return sendClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(PhoneClicked value) phoneClicked,
    required TResult Function(TopicChanged value) topicChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(SendClicked value) sendClicked,
  }) {
    return sendClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
  }) {
    return sendClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(PhoneClicked value)? phoneClicked,
    TResult Function(TopicChanged value)? topicChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(SendClicked value)? sendClicked,
    required TResult orElse(),
  }) {
    if (sendClicked != null) {
      return sendClicked(this);
    }
    return orElse();
  }
}

abstract class SendClicked implements ContactsEvent {
  const factory SendClicked() = _$SendClicked;
}
