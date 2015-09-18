# YCStateButton

[![CI Status](http://img.shields.io/travis/backslash112/YCStateButton.svg?style=flat)](https://travis-ci.org/backslash112/YCStateButton)
[![Version](https://img.shields.io/cocoapods/v/YCStateButton.svg?style=flat)](http://cocoapods.org/pods/YCStateButton)
[![License](https://img.shields.io/cocoapods/l/YCStateButton.svg?style=flat)](http://cocoapods.org/pods/YCStateButton)
[![Platform](https://img.shields.io/cocoapods/p/YCStateButton.svg?style=flat)](http://cocoapods.org/pods/YCStateButton)

A custom control for iOS.</br>
With this control, you can make a selectable view with auto-width easily.

<img src="https://cloud.githubusercontent.com/assets/5343215/9953043/a2ef1dba-5e0f-11e5-9908-66c7f1fac779.png" alt="Screenshot" width=280 />

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

YCStateButton is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "YCStateButton"
```

## Usage
(see sample Xcode project in /Example)

1. Add two images to the Images.xcassets file and slicing them horizontally.

<img src="https://cloud.githubusercontent.com/assets/5343215/9952859/3d14f53e-5e0d-11e5-8f20-c6c91255b81d.png" alt="Screenshot" width=300 /></br>
2.  Use it.
```Swift
let stateButton = YCStateButton(frame: CGRectMake(30, 30, 0, 0))
stateButton.selectedStateBackgroundImage = UIImage(named: "tag_selected_bg")!
stateButton.unSelectedStateBackgroundImage = UIImage(named: "tag_unselected_bg")!
stateButton.selectedStatusTitleColor = UIColor.greenColor()
stateButton.unselectedStatusTitleColor = UIColor.grayColor()
stateButton.fontSize = 15
stateButton.setTitle("Superman", forState: UIControlState.Normal)
self.view.addSubview(stateButton)
```

## Author

Yang Cun, yangcun@live.com

## License

YCStateButton is available under the MIT license. See the LICENSE file for more info.
