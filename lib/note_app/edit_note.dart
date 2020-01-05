import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/note_app/controller/notes_controller.dart';
import 'package:flutter_widgets/note_app/dto/notes_dto.dart';

class EditNote extends StatefulWidget {
  static const tag = 'editNotes';

  @override
  _EditNoteState createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  NotesController _notesController;
  bool isLoading = false;
  bool isDeleting = false;
  EditNoteArgs args;

  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _notesController = NotesController();
    Future.delayed(Duration.zero, () {
      if (args.isUpdate ?? false) {
        _titleController.text = args.note.title;
        _contentController.text = args.note.content;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        actions: args.isUpdate
            ? <Widget>[
                !isDeleting
                    ? IconButton(
                        icon: Icon(Icons.delete_outline),
                        onPressed: () {
                          setState(() {
                            isDeleting = true;
                          });
                          _notesController
                              .deleteNote(args.note.id)
                              .then((data) {
                            Navigator.pop(context);
                          });
                        },
                      )
                    : IconButton(
                        icon: Container(
                          child: CircularProgressIndicator(),
                          width: 24,
                          height: 24,
                        ),
                        onPressed: () {},
                      )
              ]
            : [],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            child: TextField(
              controller: _titleController,
              maxLines: 5,
              minLines: 1,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 30,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Event Title',
                hintStyle: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 30,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: TextField(
              controller: _contentController,
              minLines: 1,
              maxLines: 100,
              style: TextStyle(
                fontSize: 18,
              ),
              decoration: InputDecoration.collapsed(
                hintText: 'Description',
                hintStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          createNotes();
        },
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            width: 150,
            height: kToolbarHeight,
            child: isLoading
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                : Text(
                    args.isUpdate ? 'UPDATE' : 'CREATE',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  void createNotes() {
    FocusScope.of(context).requestFocus(FocusNode());

    String title = _titleController.text;
    String content = _contentController.text;

    if (title.isEmpty || content.isEmpty) {
      showCupertinoDialog(
          context: context,
          builder: (context) {
            return CupertinoAlertDialog(
              content: Text('Please fill the title and content.'),
              actions: <Widget>[
                CupertinoButton(
                  child: Text('Close'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            );
          });
      return;
    } else {
      if (!isLoading) {
        setState(() {
          isLoading = true;
        });
      }

      if (!args.isUpdate) {
        _notesController
            .createNotes(title, content)
            .then((data) {})
            .catchError((error) {})
            .whenComplete(() {
          Navigator.pop(context);
        });
      } else {
        _notesController
            .updateNote(args?.note?.id, title, content)
            .then((data) {})
            .catchError((error) {})
            .whenComplete(() {
          Navigator.pop(context);
        });
      }
    }
  }
}

class EditNoteArgs {
  final bool isUpdate;
  final NotesDto note;

  EditNoteArgs(this.isUpdate, this.note);
}
