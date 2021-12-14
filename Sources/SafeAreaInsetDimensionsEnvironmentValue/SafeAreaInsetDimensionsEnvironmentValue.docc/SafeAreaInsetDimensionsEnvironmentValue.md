# ``SafeAreaInsetDimensionsEnvironmentValue``

A custom SwiftUI EnvironmentValue for dynamically reading a view's SafeArea inset dimensions.

## Overview

### Using the `safeAreaInsetDimensions` environment value.

```swift


public struct MyView: View {
    
    @Environment(\.safeAreaInsetDimensions)
    private var safeAreaInsetDimensions

    ...
}

```

`safeAreaInsetDimensions` looks up the environment's current ``SafeAreaInsetsKey`` value.


## Topics

### Essentials

- ``SafeAreaInsetsKey``
