import 'package:bloc/bloc.dart';
import 'package:course_app/domainBloc/model/login_request.dart';
import 'package:course_app/domainBloc/model/login_response.dart';
import 'package:course_app/infrastructureBloc/auth/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

//cubit ini sebuah function yang isinya untuk di triger


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

//  dalam cubit ini kita deklarasikan repo yang sudah kita buat tadi

    AuthRepository _authRepository =  AuthRepository();

    //ini merupakan sebuah state management untuk sign in
    void signInUser(LoginRequest loginRequest) async  {
        // nah kalau kita udah ngisi email nd pwd , maka data sedng di loading , saat data loading maka gunakan emit , dan tulisakan class yng udah kita buat tadi di statenya
        emit(AuthLoading());
        // terus buat var untuk ambil datanya, nah disini kita pakai try , catch karena kita akan mencoba kira2 datanya kosong atau tidak , lalu klau catch(error) maka akan ke doing lain
        try{
          final _data = await _authRepository.signInWithEmailAndPassword(
            loginRequest: loginRequest);
        //  lalu kalau data udah diambil maka harus ada pemberitahuan dari state nya 

          _data.fold(
                  (l) => emit(AuthError(l)),
                  (r) =>  emit(AuthLoginSuccess(r)));

        } catch (e) {
          emit(AuthError(e.toString()));
        }

    }


}
