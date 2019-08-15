import 'package:flutter/material.dart';
import 'package:flutter_widgets/form_kit/toast.dart';

class FlutterForm extends StatefulWidget {
  FlutterForm({Key key}) : super(key: key);

  _FlutterFormState createState() => _FlutterFormState();
}

class _FlutterFormState extends State<FlutterForm> {
  // ScrollController _controller = ScrollController();
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: 'Hello',
          onPressed: (){

          },
        ),
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Tooltip(
                  message: 'Hello',
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextFormField(
                    validator: (value) {
                      return value.isEmpty ? 'Error' : null;
                    },
                    autovalidate: true,
                    decoration: InputDecoration(
                        // helperText: 'hrlo',
                        // errorText: 'hello',
                        errorStyle: TextStyle(),
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    validator: (value) {
                      return value.isEmpty ? 'Error' : null;
                    },
                    autovalidate: true,
                    decoration: InputDecoration(
                        // helperText: 'hrlo',
                        // errorText: 'hello',
                        errorStyle: TextStyle(),
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: RaisedButton(
                    colorBrightness: Brightness.dark,
                    color: Colors.green,
                    child: Text('Validate it Man'),
                    onPressed: () {
                      Toast.show('helo', context, backgroundColor: Colors.blue, backgroundRadius: 4);
                      _formKey.currentState.save();
                      _formKey.currentState.validate();
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
