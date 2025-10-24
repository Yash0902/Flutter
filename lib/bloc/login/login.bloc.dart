
import 'package:bloc/bloc.dart';
import 'package:container_widget/bloc/login/login_event.dart';
import 'package:container_widget/bloc/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{
      LoginBloc() : super(LogiInitial()) {

         on<LoginPressButton>((event,emit)  async {
             emit(LoginLoading());
              await Future.delayed(const Duration(seconds: 2));
              if(event.email == "" || event.password == ""){
                emit(LoginError("Please enter the email and Password"));
              } else if(event.email == "yashrathore@gmail.com" && event.password == "1234"){
                  emit(LoginSuccess(event.email));
              }else {
                emit(LoginError('Invalid email or password'));
              }
         });
      }
}