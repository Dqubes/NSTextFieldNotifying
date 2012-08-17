NSTextFieldNotifying
====================

An extremely simple implementation of NSTextField which has an extra method in the delegate to notify you whenever the text changes

The class is implemented as you usually would with a regular NSTextField
programmatically, or if you use interface builder, change the custom class to
NSTextFieldNotifying.

Delegate
--------

The protocol extends the NSTextField protocol adding the method:

`-(void)textFieldDidChange:(NSTextField *)textField;`

Just implement your class as the delegate and remember to call

`[textField setDelegate:self];`


This class is simple, but it's saved me so much time and effort since I need
this a lot and it means I don't have many methods scattered around since I get
a notification with a reference to an actual NSTextField

Also, there are files for UITextField here which do the same thing. These are
untested though. 
