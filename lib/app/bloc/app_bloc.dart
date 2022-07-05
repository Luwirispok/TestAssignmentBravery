import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:power_bank/core/bloc/bloc_action.dart';
import 'package:power_bank/data/gateways/local/preferences_local_gateway.dart';
import 'package:power_bank/data/repositories/notifications_repository.dart';
import 'package:power_bank/data/web_socket_manager.dart';
import 'package:rxdart/subjects.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required this.socketManager,
    required this.notificationsRepository,
    required this.preferencesLocalGateway,
  }) : super(AppState()) {
    on<Init>(_init);
    on<AppLifecycleStateChanged>(_appLifecycleStateChanged);
    this.add(AppEvent.init());
  }

  WebSocketManager socketManager;
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  NotificationsRepository notificationsRepository;
  PreferencesLocalGateway preferencesLocalGateway;

  BehaviorSubject<AppLifecycleState?> _appLifecycleStateSubject = BehaviorSubject.seeded(null);

  Stream<AppLifecycleState?> get appLifecycleStateStream => _appLifecycleStateSubject.stream;

  FutureOr<void> _init(
    Init event,
    Emitter<AppState> emit,
  ) async {
    // await Firebase.initializeApp();
    socketManager.startSockets();
    // _setUpPushNotifications();
  }

  void _setUpPushNotifications() async {
    if (Platform.isIOS) {
      await Future.delayed(Duration(seconds: 2), () {
        firebaseMessaging.requestPermission(sound: true, badge: true, alert: true);
      });
    }
    firebaseMessaging.getToken().then((token) async {
      if (token != null) {
        var oldPushToken = await preferencesLocalGateway.getPushToken();
        if (oldPushToken != token) {
          preferencesLocalGateway.setToken(token);
          notificationsRepository.setNotificationsToken(token);
        }
      }
    });
    firebaseMessaging.subscribeToTopic("commonTopic");
  }



  FutureOr<void> _appLifecycleStateChanged(
    AppLifecycleStateChanged event,
    Emitter<AppState> emit,
  ) {
    _appLifecycleStateSubject.add(event.state);
  }

  @override
  Future<void> close() async {
    socketManager.stopSockets();
    await _appLifecycleStateSubject.close();
    return super.close();
  }
}
