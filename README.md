# SwiftUIViewToImage

SwiftUIViewToImage is a Swift Package that provides an easy way to convert SwiftUI Views into UIImage. This package supports iOS 16 and later.

## Installation

Add SwiftUIViewToImage to your project using Swift Package Manager.

In Xcode, select "File" > "Swift Packages" > "Add Package Dependency" and enter the URL of this repository.


## Usage

Here is an example of how to use SwiftUIViewToImage to take a snapshot of a SwiftUI View:

```swift
import SwiftUIViewToImage

struct ContentView: View {
    var body: some View {
        VStack {
        
            if let image1 = Text("This is an image.").foregroundColor(.red).snapshot() {
                Image(uiImage: image1)
            }
                    
            if let image2 = Text("This is an image.").foregroundColor(.green).snapshot(scale: 2.0) {
                Button("Save") {
                    UIImageWriteToSavedPhotosAlbum(image2, nil, nil, nil)
                }
            }
            
        }
    }
}
```

In this example, a SwiftUI View is created with a `Text` view. The `snapshot()` function is used to convert the `Text` view into an image. The resulting image can be saved to the device's photo album when the "Save" button is clicked.

## Manual Usage

If you prefer not to install the package but still want to use its functionality, you can add the following code to your project:

```swift
import SwiftUI
import UIKit

public extension View {
    @MainActor
    func snapshot(scale: CGFloat? = nil) -> UIImage? {
        let renderer = ImageRenderer(content: self)
        renderer.scale = scale ?? UIScreen.main.scale
        return renderer.uiImage
    }
}
```

## Contributions

Contributions are welcome! If you find a bug or want to suggest a new feature, please open an issue or submit a pull request.

## License

SwiftUIViewToImage is released under the MIT License.
