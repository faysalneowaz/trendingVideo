

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qutectask/bloc/VideoDetailsEvents.dart';
import 'package:qutectask/bloc/videoDetailsState.dart';
import 'package:qutectask/repos/repositories.dart';

class VideoDetailsBloc extends Bloc<VideoDetailsEvent,VideoDetailsState>{
  final GetAllVideoDetails _allVideoDetails;
  VideoDetailsBloc(this._allVideoDetails): super(VideoLoadingState()){
    on<LoadVideoDetailsEvent>((event, emit) async{
      emit(VideoLoadingState());
    },);
  }
  
}