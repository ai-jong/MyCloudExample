# MyCloud Example

![MyCloud: Elegant Networking in Swift](nvidia.png)

MyCloud is artificial intelligence (AI) generate response library written in Swift.

- [Features](#features)
- [Installation](#installation)
- [NVIDIA API Key](#NVIDIA-API-Key)
- [Example](#example)
- [License](#license)

## Features

- [x] Generate responses and outputs based on NVIDIA artificial intelligence <br> complex algorithms and machine learning techniques. <br> <br>
  - [x] Automatic retry
  - [x] Synchronized requests

## Installation
### CocoaPods

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects.<br> 
For usage and installation instructions, visit their website.<br> 
To integrate MyCloud into your Xcode project using CocoaPods, <br> specify it in your `Podfile`:
https://github.com/ai-jong/MyCloud/tree/main/Release
```ruby
platform :ios, '14.0'
use_frameworks!

target 'MyCloudExample' do
  pod "MyCloud", :git => 'https://github.com/ai-jong/MyCloud.git', :branch => 'main'
end

```
## NVIDIA API Key
To get started with MyCloud, get API key at [NVIDIA](https://www.nvidia.com/en-us/ai/).

## Example

MyCloud's compact syntax and extensive feature set allow requests with powerful features like automatic retry to be written in just a few lines of code.

```swift
import MyCloud

func nvidiaAIExample() {
    let nvidiaAI = MyCloud( apiKey: "nvapi-your nvidia api key");
                
     nvidiaAI.request("taiwan in five words or less") { ( result: String) in
        print("result: \(result)")
     }
        
     let questions = ["1+1", "1+2", "2+3"]
     for (index, q) in questions.enumerated() {
            print("Item \(index): \(q)")
            nvidiaAI.request("calculate '\(q)'") { ( result: String) in
                print("result: \(result)")
            }
     }
}
```

## License

MyCloud is released under the MIT license.

