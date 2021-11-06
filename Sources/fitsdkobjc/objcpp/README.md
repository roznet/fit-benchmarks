# Swift and Objective-C

The FIT Objective-C SDK is implemented as a Swift package that can be used in projects that target OSX or iOS using Xcode, Swift, and Objective-C. The package includes tests that demonstrate how to use the SDK. These test programs are similar to the [Cookbook](/fit/cookbook/) recipes.

* ActivityEncodeTests.swift: Demonstrates how to encode Activity Files.
* DecodeWithBroadcasterTests.swift: Demonstrates decoding a FIT file using the Message Broadcaster and delegate methods.
* SwiftDecoderTests.swift: Demonstrates how to decode FIT files with just a few lines of code by using the FITListener and FITMessages classes. These classes are available for Swift projects only.
* FITDateTests.swift: Demonstrates how to work with the FITDate class.
* FITTests.swift: Demonstrates using arrays, enums, strings, and subfields.

To run the tests, open /path/to/fit/sdk/objcpp/package.swift in Xcode. Then goto to the Test navigator and press ⌘U to run all of the tests.

## Adding the FIT Objective-C SDK Package as a Local Package Dependency

The FIT Objective-C SDK can be added as a local dependency to existing Swift and Objective-C projects in Xcode.

1. Open the project in Xcode that you would like to add the FIT Objective-C SDK to.
2. Select the /path/to/fit/sdk/objcpp folder in Finder and then drag the folder into the Project navigator. This will add the FIT Objective-C SDK Package as a local package to your project.
3. Next select your project in the Project navigator, then select your app target and navigate to its General pane.
4. Click the + button in the “Frameworks, Libraries, and Embedded Content” section, select the FIT library, and add it as a dependency.

## Using the FIT Objective-C SDK

After the FIT Objective-C SDK package has been added as dependency, it can be used by importing the ObjcFIT module into the appropriate source files.

````
import ObjcFIT  // Swift
@import ObjcFIT // Objective C
````
When using the FITListener and FITMessages classes, the SwiftFIT module also needs to be imported. These classes are available for Swift projects only.
````
import SwiftFIT // Swift
````
