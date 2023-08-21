//
//  ViewController.swift
//  0816
//
//  Created by laijiaaa1 on 2023/8/16.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageViewview: UIImageView!
    @IBOutlet weak var playSoundSwitch: UISwitch!
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    var imagetotal = 5
    var numberOfSounds = 3
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    }

    
    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
                    do{
                        try audioPlayer = AVAudioPlayer(data: sound.data)
                        audioPlayer.play()
                    }catch{
                        print("😡 ERROR: \(error.localizedDescription)could not read data from file sound0")
                    }
                }else{
                    print("ERROR: could not read data from file sound0")
                }
    }
    func nonRepeatingRandom (originalNumber: Int, upperLimit: Int) -> Int{
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func buttonView(_ sender: UIButton) {
        let messages = ["Nothing is impossible",
                        "Do the best you can",
                        "Don't let yesterday take up too much of today",
                        "You learn more from failure than from success",
                        "It's never too late to be what you might've been"]
        
        messageNumber = nonRepeatingRandom (originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
       
        imageNumber = nonRepeatingRandom (originalNumber: imageNumber, upperLimit: imagetotal-1)
        imageViewview.image = UIImage(named: "image\(imageNumber)")
        
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: numberOfSounds-1)
        if playSoundSwitch.isOn{
            playSound(name: "sound\(soundNumber)")
            
        }
    }
    
    @IBAction func playSoundToggled(_ sender: UISwitch){
        if !sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
    
////     5.0
//        var newMessageNumber: Int
//        repeat {
//            newMessageNumber = Int.random(in: 0...messages.count-1)
//        }while messageNumber == newMessageNumber
//        messageNumber = newMessageNumber
//        messageLabel.text = messages[messageNumber]
//
//        var newImageNUmber: Int
//        repeat {
//            newImageNUmber = Int.random(in: 0...imagetotal-1)
//        }while imageNumber == newImageNUmber
//        imageNumber = newImageNUmber
//        imageViewview.image = UIImage(named: "image\(imageNumber)")
//        if let sound = NSDataAsset(name: "sound0"){
//            do{
//                try audioPlayer = AVAudioPlayer(data: sound.data)
//                audioPlayer.play()
//            }catch{
//                print("😡 ERROR: \(error.localizedDescription)could not read data from file sound0")
//            }
//        }else{
//            print("ERROR: could not read data from file sound0")
//        }
    
    
    
    
//       4.0
//        var newMessage = messages[Int.random(in: 0...messages.count-1)]
//        while messageLabel.text == newMessage{
//            print("*** we had a repeating value. Both newMessage and messageLabel.text=\(newMessage) and \(messageLabel.text!)")
//            newMessage = messages[Int.random(in: 0...messages.count-1)]
//        }
//        messageLabel.text = newMessage
//        imageViewview.image = UIImage(named: "image\(Int.random(in:0...imagetotal))")
//
    
    
//       3.0
//        messageLabel.text = messages[Int.random(in:0...messages.count-1)]
//        imageViewview.image = UIImage(named: "image\(Int.random(in:0...imagetotal))")
//
    
    
//       2.0
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
    
    
    
    
//        1.0
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

