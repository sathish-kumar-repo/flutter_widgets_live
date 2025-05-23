import 'package:flutter/material.dart';

class RawAutoCompleteWidget extends StatefulWidget {
  const RawAutoCompleteWidget({super.key});

  @override
  State<RawAutoCompleteWidget> createState() => _RawAutoCompleteWidgetState();
}

class _RawAutoCompleteWidgetState extends State<RawAutoCompleteWidget> {
  static const List<String> theList = <String>[
    'venusaur',
    'blastoise',
    'charizard',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RawAutoComplete Widget"),
      ),
      body: RawAutocomplete(
        optionsBuilder: (TextEditingValue textEditingValue) {
          return theList.where((String item) {
            return item
                .toLowerCase()
                .contains(textEditingValue.text.toLowerCase());
          });
        },
        fieldViewBuilder: (
          BuildContext context,
          TextEditingController textEditingController,
          FocusNode focusNode,
          VoidCallback onFieldSubmitted,
        ) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              onFieldSubmitted: (String value) {
                onFieldSubmitted();
              },
            ),
          );
        },
        optionsViewBuilder: (
          BuildContext context,
          AutocompleteOnSelected<String> onSelected,
          Iterable<String> options,
        ) {
          return Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                elevation: 4.0,
                child: SizedBox(
                  height: 200.0,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8.0),
                    itemCount: options.length,
                    itemBuilder: (context, index) {
                      final String option = options.elementAt(index);
                      // print(option);
                      return GestureDetector(
                        onTap: () {
                          onSelected(option);
                        },
                        child: ListTile(
                          title: Text(option),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
