part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object?> get props => [];
}

class HomeInitial extends HomeState {
  const HomeInitial(this.index);
  final int index;
  @override
  List<Object?> get props => [index];
}

@immutable
abstract class ShowButtonState extends Equatable {
  const ShowButtonState();
  @override
  List<Object?> get props => [];
}

class ButtonInitial extends ShowButtonState {
  const ButtonInitial(this.isShow);
  final bool isShow;
  @override
  List<Object?> get props => [isShow];
}
