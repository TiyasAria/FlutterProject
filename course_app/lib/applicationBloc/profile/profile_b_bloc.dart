import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:course_app/domainBloc/user/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'profile_b_event.dart';
part 'profile_b_state.dart';
part 'profile_b_bloc.freezed.dart';

class ProfileBBloc extends Bloc<ProfileBEvent, ProfileBState> {
  ProfileBBloc() : super(ProfileBInitial());

  @override
  Stream<ProfileBState> mapEventToState(
    ProfileBEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
