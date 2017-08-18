//
//  ViewController.swift
//  FunFacts
//
//  Created by Van Doan on 8/17/17.
//  Copyright © 2017 Coco Island. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = "Hoorah, fun fact."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
            funFactLabel.text = "next fact"
    }

}

//
//
//
//
//struct Tag {
//    let name: String
//}
//
//struct Post {
//    let title: String
//    let author: String
//    let tag: Tag
//    
//    func description() -> String {
//        return "\(title) by \(author). Filed under \(tag)"
//    }
//}
//
//let tag = Tag(name: "swift")
//let firstPost = Post(title: "iOS Development", author: "Apple", tag: tag)
//
//let postDescription = firstPost.description()
//






