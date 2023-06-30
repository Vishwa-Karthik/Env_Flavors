import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gpt_env_setup/dev/env_setup.dart';
import 'package:gpt_env_setup/screens/home.dart';

void main() async {
  await dotenv.load(
      fileName: '.env_stg'); // Load production environment variables by default

  runApp(const Home(appEnvironment: EnvironmentType.stage));
}