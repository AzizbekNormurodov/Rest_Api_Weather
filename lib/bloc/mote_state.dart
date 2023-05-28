part of 'note_bloc.dart';

class NoteState extends Equatable {
  final num temp;
  final String country;

   const NoteState({required this.temp, required this.country});
  NoteState copyWith({num? temp, String? country}) {
    return NoteState(temp: temp ?? this.temp, country: country ?? this.country);
  }
  @override
  List<Object?> get props => [temp, country];

}