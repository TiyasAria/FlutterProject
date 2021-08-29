part of 'profile_b_bloc.dart';

@freezed
abstract class ProfileBEvent {
  const factory ProfileBEvent.started() = _Started;
  const factory ProfileBEvent.getAllUserData() = _GetAllUserData;
}
