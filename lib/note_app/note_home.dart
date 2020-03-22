import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_widgets/note_app/controller/notes_controller.dart';
import 'package:flutter_widgets/note_app/dto/notes_dto.dart';
import 'package:flutter_widgets/note_app/edit_note.dart';

class NoteHome extends StatefulWidget {
  @override
  _NoteHomeState createState() => _NoteHomeState();
}

class _NoteHomeState extends State<NoteHome> {
  @override
  Widget build(BuildContext context) {
    debugPrint('CALLED');
    return Theme(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Notes'),
        ),
        body: FutureBuilder(
          future: NotesController().getNotes(),
          builder: (context, AsyncSnapshot<List<NotesDto>> snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  '${snapshot.error.toString()}',
                  textAlign: TextAlign.center,
                ),
              );
            }
            if (snapshot.hasData) {
              return StaggeredGridView.countBuilder(
                itemCount: snapshot.data.length,
                crossAxisCount: 4,
                itemBuilder: (context, index) {
                  NotesDto note = snapshot.data[index];
                  return Card(
                    child: InkWell(
                      onLongPress: () {
                        Navigator.pushNamed(
                          context,
                          EditNote.tag,
                          arguments: EditNoteArgs(true, note),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, bottom: 4.0),
                              child: Text(
                                note.title,
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 4.0, bottom: 4.0),
                              child: Text(
                                note.content,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(
                  2,
                ),
                mainAxisSpacing: 2.0,
                crossAxisSpacing: 2.0,
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(
              context,
              EditNote.tag,
              arguments: EditNoteArgs(false, null),
            );
          },
          child: Icon(Icons.edit),
        ),
      ),
      data: ThemeData(
        primaryColor: Colors.redAccent,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
