import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gpt_env_setup/screens/login.dart';

import '../app_env.dart';

Future<void> main() async {
  await EnvInfo.initialize(AppEnvironment.DEV);
  await Firebase.initializeApp();
  runApp(const Home());
}
