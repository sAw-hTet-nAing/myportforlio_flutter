import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeInitial(0));

  void increaseCounter() {
    if (state is HomeInitial) {
      emit(HomeInitial((state as HomeInitial).index + 1));
    }
  }

  void decreaseCounter() {
    if ((state as HomeInitial).index == 0) {
      emit(HomeInitial((state as HomeInitial).index));
    } else {
      emit(HomeInitial((state as HomeInitial).index - 1));
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
