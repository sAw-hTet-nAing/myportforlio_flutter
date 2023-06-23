import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial(false));

  void showAppBar() {
    if (state is HomeInitial) {
      emit(const HomeInitial(true));
    }
  }

  void hide() {
    if (state is HomeInitial) {
      emit(const HomeInitial(false));
    }
  }
}

class ButtonCubit extends Cubit<ButtonInitial> {
  ButtonCubit() : super(const ButtonInitial(false));

  void showText() {
    if ((state).isShow) {
      emit(const ButtonInitial(false));
    } else {
      emit(const ButtonInitial(true));
    }
  }
}
