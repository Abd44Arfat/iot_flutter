import 'dart:async';

import 'package:flutter/material.dart';

import 'package:rive/rive.dart' as rive;
import 'package:untitled6/presentation/screens/root_screen.dart';

class SplashPage extends StatefulWidget {

  static const String route = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late rive.StateMachineController smController;
  late rive.RiveAnimation animation;
  late rive.SMIBool state;
  Timer splashTimer = Timer(Duration.zero, () {});
  Timer durationTimer = Timer(Duration.zero, () {});

  @override
  void initState() {
    super.initState();

    animation = rive.RiveAnimation.asset(
      'assets/images/flicky.riv',
      artboard: 'boltanim',
      fit: BoxFit.fitHeight,
      onInit: onRiveInit,
    );
  }

  @override
  void dispose() {
    splashTimer.cancel();
    durationTimer.cancel();
    smController.dispose();
    super.dispose();
  }

  void onRiveInit(rive.Artboard artboard) {

    smController = rive.StateMachineController.fromArtboard(
        artboard,
        'boltanim${Theme.of(context).brightness.name}'
    )!;

    artboard.addController(smController);

    state = smController.findInput<bool>('loaded') as rive.SMIBool;

    splashTimer = Timer(const Duration(seconds: 2), () {
      state.value = true;
    });
  }

  @override
  Widget build(BuildContext context) {

    durationTimer = Timer(const Duration(seconds: 8), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  test()),
      );
    });

    return Scaffold(
      body: animation,
    );
  }
}