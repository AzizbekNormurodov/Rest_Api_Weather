
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_example/bloc/note_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    context.read<NoteBloc>().add(NoteNetworkEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( centerTitle: true,
        title: Text("Weather"),
      ),

      body: Center(
        child: Column(
          children: [
            Text("Temp: ${context.select((NoteBloc bloc) => bloc.state.temp)}", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
            Text("Country: ${context.select((NoteBloc bloc) => bloc.state.country)}", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
            Text("Name : ${context.select((NoteBloc bloc) => bloc.state.name)}", style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
