# iOS Accessibility Tools

A comprehensive iOS app that demonstrates various accessibility features and provides step-by-step tutorials for developers to implement them in their own apps.

## Features

### 1. Scalable Text with Interactive Slider
- **Interactive Example**: Try the text size slider on the first screen to see how it works in real-time
- **Step-by-Step Tutorial**: 6 comprehensive steps showing how to implement scalable text in any iOS app
- **Working Implementation**: Fully functional text size slider that scales all text throughout the app
- **Best Practices**: Guidelines for implementing accessible text sizing

## Getting Started

1. Open the project in Xcode
2. Build and run the app
3. Navigate to "Scalable Text" to see the tutorial
4. Start with Step 0 to try the interactive text size slider
5. Use the navigation arrows to go through each implementation step

## Text Size Slider Implementation

The app includes a complete, working implementation of a text size slider that can be easily adapted for any iOS app:

### Key Components

- **TextSizeManager**: ObservableObject class that manages text size state and persistence
- **TextSizeSliderView**: SwiftUI view providing the interactive slider interface
- **Environment Integration**: Proper setup using @EnvironmentObject for app-wide access

### Features

- **Range**: 0.5x to 2.0x text scaling (50% to 200%)
- **Persistence**: Settings saved using UserDefaults
- **Real-time Updates**: All text scales immediately as you adjust the slider
- **Accessibility**: Works with VoiceOver and other accessibility features

## Tutorial Structure

1. **Step 0**: Interactive example with working text size slider
2. **Step 1**: Creating the TextSizeManager class
3. **Step 2**: Adding TextSizeManager to your app
4. **Step 3**: Creating the TextSizeSliderView
5. **Step 4**: Applying text size scaling throughout your app
6. **Step 5**: Best practices and testing guidelines

## Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## Architecture

The app uses SwiftUI with:
- MVVM pattern with ObservableObject
- Environment objects for dependency injection
- UserDefaults for persistent storage
- Modular view components for reusability

## Contributing

This project serves as a learning resource for iOS developers implementing accessibility features. Feel free to:
- Suggest additional accessibility features
- Improve the existing tutorials
- Add more comprehensive examples
- Enhance the UI/UX

## License

This project is open source and available under the MIT License.
