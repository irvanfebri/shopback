

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/pages/welcome/bloc/welcome_events.dart';
import 'package:flutter_shop/pages/welcome/bloc/welcome_states.dart';

class WelcomeBlocs extends Bloc<WelcomeEvents,WelcomeStates>{
  WelcomeBlocs():super(InitStates()){
    on<WelcomeEvents>((event,emit){
      emit(WelcomeStates(page: state.page));
    });

  }
}