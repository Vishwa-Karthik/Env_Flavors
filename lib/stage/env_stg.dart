import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class Environment {}

class StgEnvironment implements Environment {
  final String baseUrl = dotenv.env['API-URL']!;
}
