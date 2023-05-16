import 'package:app_notes/bloc/note/note.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NoteRepository {
  final CollectionReference _notesCollection =
      FirebaseFirestore.instance.collection('notes');

  Future<bool> addNote({
    required String matiere,
    required String note,
  }) async {
    try {
      await _notesCollection.add({
        'matiere': matiere,
        'note': note,
      });
      return true;
    } catch (e) {
      throw Exception('Failed to add note');
    }
  }

  Future<void> deleteNote(String noteId) async {
    try {
      await _notesCollection.doc(noteId).delete();
    } catch (e) {
      throw Exception('Failed to delete note');
    }
  }

  Future<void> updateNote({
    required String noteId,
    required String matiere,
    required String note,
  }) async {
    try {
      await _notesCollection.doc(noteId).update({
        'matiere': matiere,
        'note': note,
      });
    } catch (e) {
      throw Exception('Failed to update note');
    }
  }

  Stream<List<Note>> getNotes() {
    return _notesCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final data = doc.data() as Map<String, dynamic>;
        return Note(
          id: doc.id,
          matiere: data['matiere'], // Utilisation de l'opérateur de null-check ?. pour récupérer la propriété matiere si data n'est pas null
        note: data['note'],
        );
      }).toList();
    });
  }

}
