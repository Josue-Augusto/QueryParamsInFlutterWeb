import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:web_query_params/routes/routes.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web Query Params',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      onGenerateRoute: (RouteSettings settings) {
        final uri = Uri.parse(settings.name!);

        if (Routes.route.containsKey(uri.path)) {
          return MaterialPageRoute(
              builder: Routes.route[uri.path]!,
              settings: RouteSettings(
                arguments: uri.queryParametersAll,
                name: settings.name,
              ));
        }
        return MaterialPageRoute(
            builder: Routes.route['/']!,
            settings: RouteSettings(
              arguments: uri.queryParametersAll,
              name: settings.name,
            ));
      },
    );
  }
}
