//bibliotecas
import 'package:mangue_laps/bloc/Connectivity/connectivity_cubit.dart';
import 'package:mangue_laps/config/navigator/routes.dart';
import 'package:mangue_laps/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mangue_laps/presentation/splash_screen.dart';

import 'bloc/ContadorCubit/contador_cubit.dart';
import 'config/navigator/navigator.dart';

//início
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //tela inicial e cor
    return MultiBlocProvider(
      providers: [
        //chamada da página do contador
        BlocProvider(
          create: (context) => ContadorCubit(),
        ),
        //conexão mqtt
        BlocProvider(
          create: (context) => ConnectivityCubit(),
        ),
        //timer
        /*BlocProvider(
          create: (context) => TimerCubit(),
        ),*/
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mangue Laps',
        theme: ThemeData(
          primaryColor: darkerGreen,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
              .copyWith(secondary: Colors.blueAccent[700]),
        ),
        //chamada da animação
        home: const SplashScreen(),
        //próxima página
        onGenerateRoute: RouteGenerator.generateRoute,
        initialRoute: initRoute,
      ),
    );
  }
}
