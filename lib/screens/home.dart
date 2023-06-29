import 'package:flutter/material.dart';
import 'package:gpt_env_setup/dev/env_dev.dart';

class Home extends StatelessWidget {
  final EnvironmentType appEnvironment;
  const Home({super.key, required this.appEnvironment});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
