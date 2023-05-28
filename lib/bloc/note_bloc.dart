
import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_example/network/api_client.dart';
part 'note_event.dart';
part 'mote_state.dart';

class NoteBloc extends Bloc<NoteEvent,NoteState> {
  NoteBloc () : super (NoteState(temp: 0, country: "", name: "")) {
    on<NoteNetworkEvent>(netWork);
  }

  Future<void> netWork(NoteNetworkEvent event, Emitter<NoteState> emit)  async {
  final response = await ApiClient.initance.getWeather();
    emit(state.copyWith(temp: response.main?.temp ?? 0, country: response.sys?.country ?? "",name: response?.name));

  }
}