import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:gpt_env_setup/dev/env_setup.dart';
import 'package:gpt_env_setup/screens/home.dart';

Future<void> main() async {
  await dotenv.load(fileName: "./.env_dev");

  runApp(const Home(
    appEnvironment: EnvironmentType.dev,
  ));
}
