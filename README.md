# MyCloud Example

![MyCloud: Elegant Networking in Swift](nvidia.png)

MyCloud is an open-source, Swift-based cloud storage library designed to simplify cloud data management.

- [Features](#features)
- [Example](#example)
- [License](#license)

## Features
- [x] Cloud storage is a crucial component of modern apps.
- [x] MyCloud offers an efficient, maintainable, and scalable cloud storage solution for iOS projects.
- [x] Installing and integrating MyCloud is quick and straightforward.
  
## Example

```swift
import MyCloud

func myCloudExample() {
    let myCloud = MyCloud()
    let data = ["name" : "jon" ]
    
    myCloud.write("folder", merge: true, data: data) { value in
    }

    myCloud.read("folder") { (value : Dictionary) in
        let data = value["data"]
        print( "\(data!)")
        print( "\(value)")
    }
        
    myCloud.watch("folder") { (value : [AnyHashable : Any]) in
      print( "\(value)")
    }
}

```

## License

MyCloud is released under the MIT license.

