import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gpt_env_setup/screens/home.dart';

import '../dev/env_setup.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env_stg");
  runApp(const Home(
    appEnvironment: EnvironmentType.stage,
  ));
}
