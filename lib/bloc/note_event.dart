part of 'note_bloc.dart';

abstract class NoteEvent extends Equatable {
  const NoteEvent();
}

class NoteNetworkEvent extends NoteEvent {
   NoteNetworkEvent ();
  @override
  List<Object?> get props => [];
}