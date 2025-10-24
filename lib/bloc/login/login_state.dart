abstract class LoginState{}

class LogiInitial extends LoginState{}

class LoginLoading extends LoginState{}

class LoginError extends LoginState{
    final String error;
    LoginError(this.error);
}

class LoginSuccess extends LoginState {
  final String userName;
  LoginSuccess(this.userName);
}

class LoginFailure extends LoginState {
  final String failure;
  LoginFailure(this.failure);
}