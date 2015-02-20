# EPSAutolayoutEasyLayout
A Category on NSLayoutConstraint that aligns and spaces arrays of views.

## Usage
```objective-c
// Aligns an array of views based on the specified attribute.
[self addConstraints:[NSLayoutConstraint alignViews:viewsToAlign byAttribute:NSLayoutAttributeBottom]];

// Vertically spaces views with the specified spacing.
[self addConstraints:[NSLayoutConstraint horizontallySpaceViews:viewsToAlign withSpacing:50]];

// Horizontally spaces views with the specified spacing.
[self addConstraints:[NSLayoutConstraint verticallySpaceViews:viewsToAlign withSpacing:50]];
```

## Installation

EPSAutolayoutEasyLayout is available through CocoaPods, to install it simply add the following line to your Podfile:

```ruby
pod "EPSAutolayoutEasyLayout"
```

Alternatively, add all files from the “Classes” folder to your project.
