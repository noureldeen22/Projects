import 'package:basketball_counter_app/cubit/countar_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountarCubit extends Cubit<CountarState>
{
  CountarCubit() : super(CountarAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void TeamAIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CountarAIncrementState());
    }
    else {
      teamBPoints += buttonNumber;
      emit(CountarBIncrementState());
    }
  }
}