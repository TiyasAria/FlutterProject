part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

//nah kalau state itu hasil dari apa yang telah dihasilkan dari cubit
class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}

class AuthError extends AuthState {
//   dalam kelas ini kita deklarasikan var untuk cetak error
 final String errorMessage;
 AuthError(this.errorMessage);
}

class AuthLoginSuccess extends AuthState {
  final LoginResponse dataLogin;
  AuthLoginSuccess(this.dataLogin);
}

//  jadi pda state ini, checkPoint mana anda saat ini lalu , apakah
// checkPoin tersebut ada datanya