import 'package:flutter/material.dart';
import 'package:gpt_env_setup/dev/env_setup.dart';

class Home extends StatelessWidget {
  final EnvironmentType appEnvironment;
  const Home({super.key, required this.appEnvironment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appEnvironment.toString()),
        ),
        body: Center(
          child: Text(DevEnvironment().baseUrl),
        ),
      ),
    );
  }
}
