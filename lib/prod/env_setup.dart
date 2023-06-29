import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentType { dev, stage, prod }

abstract class Environment {
  final EnvironmentType environmentType;

  Environment(this.environmentType);
}

class DevEnvironment implements Environment {
  final String baseUrl = dotenv.env['API_KEY']!;

  @override
  EnvironmentType get environmentType => EnvironmentType.prod;
}
