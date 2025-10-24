import 'package:container_widget/bloc/login/login.bloc.dart';
import 'package:container_widget/bloc/login/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
         child:BlocBuilder<LoginBloc,LoginState>(
             builder:(context,state){
                 if(state is LoginSuccess){
                    return Text("user:- ${state.userName}");
                 }
                 return Container();
             }
         ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
            Navigator.pop(context);
        },child:Icon(Icons.back_hand)),
    );
  }
}
