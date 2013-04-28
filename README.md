# RCSwitch

Subclass for [UIControl](http://developer.apple.com/library/ios/#documentation/uikit/reference/UIControl_Class/Reference/Reference.html) that reimplements the behaviour of Apple's [UISwitch](http://developer.apple.com/library/ios/#documentation/uikit/reference/UISwitch_Class/Reference/Reference.html). The element can be customized using stretchable images (comparable with Android's 9-patch images).

## Usage

RCSwitch can be used with Storyboard. Simply add a new UIView set its class to `RCSwitchClone`.
In order to add a RCSwitch programmatically create a new instance of `RCSwitchOnOff` using its `initWithFrame:` method.

The project includes a .xib file as well as a view controller to show off RCSwitch's capabilities and compare it against Apple's stock UISwitch.
	
## Authors

Initial project by [Robert Chin](https://github.com/robertchin/) (http://osiris.laya.com/projects/rcswitch/).
Code cleanup and major enhancements by [Dave Wood](https://github.com/DaveWoodCom/).
Minor behaviour fixes by [Wolfgang Timme](https://github.com/wtimme/).

## License

 Copyright (c) 2010 [Robert Chin](https://github.com/robertchin/)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
