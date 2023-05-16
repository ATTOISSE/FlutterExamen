import 'package:app_notes/bloc/bloc.observer.dart';
import 'package:app_notes/note.app.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = const AppObserver();
  runApp(const NoteApp());
}


