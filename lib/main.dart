import 'package:flutter/material.dart';
import 'package:logoquiz/views/homepage.dart';
import 'package:logoquiz/providers/logoprovider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LogoProvider()),
      ],
      child: const MaterialApp(
        title: 'Logo Quiz',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
