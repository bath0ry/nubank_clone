import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nubank_clone/data/balance_text_cubit.dart';
import 'package:nubank_clone/data/view_balance_cubit.dart';
import 'package:nubank_clone/home/page/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Nubank Clone',
        home: MultiBlocProvider(
          providers: [
            BlocProvider<ViewCubit>(
                create: (BuildContext context) => ViewCubit()),
            BlocProvider(create: (BuildContext context) => TextCubit())
          ],
          child: HomePage(),
        ));
  }
}
