
import 'package:equatable/equatable.dart';

abstract class VideoDetailsEvent extends Equatable{
  const VideoDetailsEvent();
}

class LoadVideoDetailsEvent extends VideoDetailsEvent{
  @override
  List<Object?> get props => [];
}