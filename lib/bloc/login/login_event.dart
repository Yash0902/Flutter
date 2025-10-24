abstract class LoginEvent{}

class LoginPressButton extends LoginEvent{
    final String email;
    final String password;

    LoginPressButton({required this.email, required this.password});
}