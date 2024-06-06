

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/pages/application/bloc/app_events.dart';
import 'package:flutter_shop/pages/application/bloc/app_states.dart';

class AppBlocs extends Bloc<AppEvents,AppStates>{
  AppBlocs():super(AppStates()){
    on<TriggerAppEvent>((event,emit){
      emit(AppStates(index:event.index));
    });
  }

}