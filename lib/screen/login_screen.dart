import 'package:container_widget/bloc/login/login.bloc.dart';
import 'package:container_widget/bloc/login/login_event.dart';
import 'package:container_widget/bloc/login/login_state.dart';
import 'package:container_widget/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _email;
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();



  void _submiteform(){
      context.read<LoginBloc>().add(
        LoginPressButton(
          email: _emailcontroller.text,
          password: _passwordcontroller.text,
        ),
      );
      _emailcontroller.clear();
      _passwordcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<LoginBloc,LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          }
        },

        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is LoginLoading) {
              return CircularProgressIndicator();
            } else {
              return Container(
                child: Form(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),

                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          errorText: (state is LoginError)
                              ? "${state.error}"
                              : "",

                          border: OutlineInputBorder(),
                          label: Text("email"),
                          helperText: "enter the email",

                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          errorText: (state is LoginError)
                              ? "${state.error}"
                              : (state is LoginFailure)
                              ? "${state.failure}"
                              : "",
                          filled: true,
                          fillColor: (state is LoginError)
                              ? Colors.red
                              : Colors.transparent,
                          hoverColor: Colors.transparent,
                          label: Text("password"),
                          helperText: "enter the password",
                          prefixIcon: Icon(Icons.password),
                        ),
                      ),

                      ElevatedButton(
                        onPressed:_submiteform,
                        child: Text("Submitt"),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
