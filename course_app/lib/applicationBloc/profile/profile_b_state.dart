part of 'profile_b_bloc.dart';

@freezed
abstract class ProfileBState {}

class ProfileBInitial extends ProfileBState {

  // jadi disni kita buat state initial nya ketika dia loading , error dll.
  const factory ProfileBInitial.initial() = _initial ;
  const factory ProfileBInitial.isLoading() = _isLoading;
  const factory ProfileBInitial.isError( String errorMessage ) = _isError;
  const factory ProfileBInitial.isSuccess(Users userResponse) = _isSuccess;

}
