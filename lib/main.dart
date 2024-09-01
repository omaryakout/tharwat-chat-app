import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tharwat_chat/pages/chat_page.dart';
import 'package:tharwat_chat/pages/login_cubit/login_cubit.dart';
import 'package:tharwat_chat/pages/login_page.dart';
import 'package:tharwat_chat/pages/resgister_page.dart';
import 'package:bloc/bloc.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: MaterialApp(
        routes: {
          LoginPage.id: (context) => LoginPage(),
          RegisterPage.id: (context) => RegisterPage(),
          ChatPage.id: (context) => ChatPage()
        },
        initialRoute: LoginPage.id,
      ),
    );
  }
}
