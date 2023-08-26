//
//  ViewController.swift
//  iosPrework
//
//  Created by Jose Patino on 8/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var revealButton: UIButton!
    
    //Keeps track of visibility state
    var isImageVisible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //When app is loaded intially, image is hidden
        imageView.isHidden = true
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func revealImage(_ sender: UIButton) {
        isImageVisible.toggle()
        imageView.isHidden = !isImageVisible
        
        let buttonText = isImageVisible ? "Hide Image" : "Surprise"
        revealButton.setTitle(buttonText, for: .normal)
        
        
    
    }
}

