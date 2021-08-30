import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:layanan_cabang/pages/pages.dart';
import 'package:layanan_cabang/provider/providers.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => LocationBloc()),
          ChangeNotifierProvider(create: (context) => FormulirBloc()),
        ],
        child: MaterialApp(
          home: SplashPage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
