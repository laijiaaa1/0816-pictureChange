//
//  ViewController.swift
//  0816
//
//  Created by laijiaaa1 on 2023/8/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageViewview: UIImageView!
    var imageNumber = 0
    var messageNumber = 0
    var imagetotal = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonView(_ sender: UIButton) {
        let messages = ["Nothing is impossible",
                        "Do the best you can",
                        "Don't let yesterday take up too much of today",
                        "You learn more from failure than from success",
                        "It's never too late to be what you might've been"]
        
        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
        imageViewview.image = UIImage(named: "image\(Int.random(in:0...imagetotal))")
    
        
        
        
//        messageLabel.text = messages[messageNumber]
//        messageNumber += 1
//        if messageNumber == messages.count {
//            messageNumber = 0
//        }
//
//        let imageName = "image\(imageNumber)"
//        imageViewview.image = UIImage(named: imageName)
//        imageNumber = imageNumber + 1
//        if imageNumber == 6{
//            imageNumber = 0
//        }
//
        
        
        
        
        
//        let awscomemessage = "You Are Awesome!"
//
//        if messageLabel.text == awscomemessage {
//            messageLabel.text = "You Are Great!"
//            messageLabel.textColor = UIColor.black
//            messageLabel.textAlignment = .center
//            imageViewview.image = UIImage(named: "image0")
//        }else if messageLabel.text == "You Are Great!"{
//            messageLabel.text = "You Are cat!"
//            messageLabel.textColor = UIColor.red
//            messageLabel.textAlignment = .center
//            imageViewview.image = UIImage(named: "cat")
//
//        }else{
//            messageLabel.text = awscomemessage
//            messageLabel.textColor = UIColor.blue
//            messageLabel.textAlignment = .center
//            imageViewview.image = UIImage(named: "image1")
//        }
    }
    
    
}

