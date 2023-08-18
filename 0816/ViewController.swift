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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonView(_ sender: UIButton) {
        let awscomemessage = "You Are Awesome!"
        
        if messageLabel.text == awscomemessage {
            messageLabel.text = "You Are Great!"
            messageLabel.textColor = UIColor.black
            messageLabel.textAlignment = .center
            imageViewview.image = UIImage(named: "image0")
        }else if messageLabel.text == "You Are Great!"{
            messageLabel.text = "You Are cat!"
            messageLabel.textColor = UIColor.red
            messageLabel.textAlignment = .center
            imageViewview.image = UIImage(named: "cat")
            
        }else{
            messageLabel.text = awscomemessage
            messageLabel.textColor = UIColor.blue
            messageLabel.textAlignment = .center
            imageViewview.image = UIImage(named: "image1")
        }
    }
    
    
}

