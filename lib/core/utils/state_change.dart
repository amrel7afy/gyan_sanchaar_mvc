import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:gyan_sanchaar_mvc_app/core/constants/constants.dart';

class AppState extends GetxController {
  final _appStateController = StreamController<String>.broadcast();
  Stream<String> get appStateStream => _appStateController.stream;
  // final List<String> _states = <String>[];
  // late AppLifecycleState? _state;
  late final AppLifecycleListener _listener;

  void onInit() async {
    super.onInit();
    // _state = SchedulerBinding.instance.lifecycleState;
    _listener = AppLifecycleListener(
      onShow: () => _handleTransition(Constants.onShow),
      onResume: () => _handleTransition(Constants.onResume),
      onHide: () => _handleTransition(Constants.onHide),
      onInactive: () => _handleTransition(Constants.onInactive),
      onPause: () => _handleTransition(Constants.onPause),
      onDetach: () => _handleTransition(Constants.onDetach),
      onRestart: () => _handleTransition(Constants.onRestart),
      // This fires for each state change. Callbacks above fire only for
      // specific state transitions.
      onStateChange: _handleStateChange,
    );
    // if (_state != null) {
    //   _states.add(_state!.name);
    // }
  }

  @override
  void onClose() {
    _appStateController.close();
    _listener.dispose();
    super.onClose();
  }

  @override
  void dispose() {
    _listener.dispose();
    _appStateController.close();
    super.dispose();
  }

  void _handleTransition(String name) {
    _appStateController.sink.add(name);
  }

  void _handleStateChange(AppLifecycleState state) {
    // _state = state;
    _appStateController.sink.add(state.name);
  }
}
