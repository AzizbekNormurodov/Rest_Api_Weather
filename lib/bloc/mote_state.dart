part of 'note_bloc.dart';

class NoteState extends Equatable {
  final num temp;
  final String country;
  final String name;

   const NoteState({required this.temp, required this.country, required this.name});
  NoteState copyWith({num? temp, String? country, String? name}) {
    return NoteState(temp: temp ?? this.temp, country: country ?? this.country, name: name ?? this.name);
  }
  @override
  List<Object?> get props => [temp, country, name];

}