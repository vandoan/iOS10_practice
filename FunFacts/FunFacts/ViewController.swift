//
//  ViewController.swift
//  FunFacts
//
//  Created by Van Doan on 8/17/17.
//  Copyright © 2017 Coco Island. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let factProvider = FactProvider()
    let colorProvider = BackgroundColorProvider()
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = factProvider.randomFact()    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
            funFactLabel.text = factProvider.randomFact()
            let randomColor = colorProvider.randomColor()
            view.backgroundColor = randomColor
            funFactButton.tintColor = randomColor
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






