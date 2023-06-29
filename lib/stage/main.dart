import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:gpt_env_setup/dev/env_setup.dart';
import 'package:gpt_env_setup/screens/home.dart';

Future<void> main() async {
  await dotenv.load(
      fileName:
          "./.env_stg"); // Load the environment variables from the .env file

  runApp(const Home(
    appEnvironment: EnvironmentType.stage,
  )); // Pass the dev environment to your app
}
