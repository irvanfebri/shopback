


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shop/pages/home/bloc/home_pages_events.dart';
import 'package:flutter_shop/pages/home/bloc/home_pages_states.dart';

class HomePageBlocs extends Bloc<HomePageEvents,HomePageStates>{
  HomePageBlocs():super(HomePageStates()){
    on<HomePageDots>(_homePageDots);
  }

  void _homePageDots(HomePageDots event,Emitter<HomePageStates> emit){
    emit(state.copyWith(index:event.index));
  }

}