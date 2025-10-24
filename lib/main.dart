import 'package:container_widget/Alertboxexample.dart';
import 'package:container_widget/Navigationbarexample.dart';
import 'package:container_widget/TextExample.dart';
import 'package:container_widget/animationexample.dart';
import 'package:container_widget/bloc/card/card_bloc.dart';
import 'package:container_widget/bloc/counter/counter_bloc.dart';
import 'package:container_widget/bloc/login/login.bloc.dart';
import 'package:container_widget/blocexample.dart';
import 'package:container_widget/bottomsheetexample.dart';
import 'package:container_widget/buttonview.dart';
import 'package:container_widget/customsliverscrollview.dart';
import 'package:container_widget/datepickerexample.dart';
import 'package:container_widget/gestureDetector.dart';
import 'package:container_widget/imagepickerexample.dart';
import 'package:container_widget/imageview.dart';
import 'package:container_widget/inkwell.dart';
import 'package:container_widget/lifecycle.dart';
import 'package:container_widget/listtileexample.dart';
import 'package:container_widget/pageviewexample.dart';
import 'package:container_widget/popupmenuexample.dart';
import 'package:container_widget/refresh.dart';
import 'package:container_widget/rowcolumn.dart';
import 'package:container_widget/screen/card_screen.dart';
import 'package:container_widget/screen/home_screen.dart';
import 'package:container_widget/screen/login_screen.dart';
import 'package:container_widget/screen/product_screen.dart';
import 'package:container_widget/scrollview.dart';
import 'package:container_widget/sliderexample.dart';
import 'package:container_widget/snackbar.dart';
import 'package:container_widget/stepperexample.dart';
import 'package:container_widget/streambuilder.dart';
import 'package:container_widget/switchexample.dart';
import 'package:container_widget/tabbarexample.dart';
import 'package:container_widget/timerpickerexample.dart';
import 'package:container_widget/toastexample.dart';
import 'package:container_widget/visiblityexample.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './container.dart';
import './mycard.dart';
import './Mytext.dart';
import './textformfield.dart';
import './listview.dart';
import './gridview.dart';
import './wrapview.dart';
import './drawer.dart';
import './customdrawer.dart';

void main() {
  runApp(
    // BlocProvider(create: (_) => CounterBloc(), child: const MyApp())

    MultiBlocProvider(
      providers: [BlocProvider(create:(_)=>CardBloc())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes:{
         "/":(context)=>ProductListScreen()

      },
      theme: ThemeData(primarySwatch: Colors.blue),
      title: "Listview",
      debugShowCheckedModeBanner: false,

    );
  }
}
