import 'package:flutter/material.dart';
import 'package:greatplaces/widgets/image_input_picker.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';

  @override
  State<StatefulWidget> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add a New Place'),
        ),
        body: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Title',
                      ),
                      controller: _titleController,
                    ),
                    const SizedBox(height: 10,),
                    ImageInput(),
                  ],
                ),
              ),
            )),
            InkWell(
              child: RaisedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text('Add place'),
                onPressed: () {},
                elevation: 0,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Theme.of(context).accentColor,
              ),
            )
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ));
  }
}
