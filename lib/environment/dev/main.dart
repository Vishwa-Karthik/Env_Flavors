import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gpt_env_setup/screens/login.dart';

import '../app_env.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: EnvInfo.firebaseApiKey,
      appId: EnvInfo.firebaseApiId,
      messagingSenderId: EnvInfo.firebaseMessageSenderId,
      projectId: EnvInfo.firebaseProjectId,
    ),
  );
  await EnvInfo.initialize(AppEnvironment.DEV);
  runApp(const Home());
}
