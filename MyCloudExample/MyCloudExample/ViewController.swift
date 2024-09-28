//
//  ViewController.swift
//  MyCloudExample
//
//  Created by John Blaine on 9/26/24.
//

import UIKit
import MyCloud

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func click(_ sender: Any) {
        self.myCloudExample()
    }
    
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

}

