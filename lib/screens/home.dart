import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gpt_env_setup/dev/env_setup.dart';

class Home extends StatelessWidget {
  final EnvironmentType appEnvironment;
  const Home({super.key, required this.appEnvironment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          appEnvironment == EnvironmentType.dev ? true : false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(EnvironmentType.dev.toString()),
        ),
        body: Center(
          child: Text(
            dotenv.env['API_URL'].toString(),
          ),
        ),
      ),
    );
  }
}
