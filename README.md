# Flutter Dropdown X

 Flutter Dropdown X is a dropdown field using a dropdown button inside a form field.

![example01](https://user-images.githubusercontent.com/63371772/133370068-36577d3c-a86b-42d9-aefb-8882785f9240.gif)

## Getting started

### Add dependency

```dart
flutter_dropdown_x: ^0.0.2
```

### Import it

```dart
import 'package:flutter_dropdown_x/flutter_dropdown_x.dart';
```


## Usage

### JSON implementation 

```dart

String _selected = "";

var data = [
    {'id': "1", 'value': 'value1'},
    {'id': "2", 'value': 'value2'},
    {'id': "3", 'value': 'value3'},
    {'id': "4", 'value': 'value4'},
    {'id': "5", 'value': 'value5'},
    {'id': "6", 'value': 'value6'},
  ];
  
  
  DropDownField(
                    value: _selected,
                    hintText: 'Please choose one',
                    dataSource: data,
                    onChanged: (v) {
                      print(v);
                      setState(() {
                        _selected = v;
                      });
                    },
                    valueField: 'id',
                    textField: 'value',
                  ),
  
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.
