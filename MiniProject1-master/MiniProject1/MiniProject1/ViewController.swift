//
//  ViewController.swift
//  MiniProject1
//
//  Created by Roshni Surpur on 8/5/20.
//  Copyright © 2020 Roshni Surpur. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var name: UILabel!
 
 
    
    @IBOutlet weak var caption: UILabel!
    
    @IBOutlet weak var main: UIImageView!
    
    var heightNum = 690
    var widthNum  = 320
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.isPagingEnabled = true
        scroll.showsVerticalScrollIndicator = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.frame = CGRect(x: 0, y: 0, width: 320, height: 690)
        
        //UIScreen.main.bounds.height
        return scroll
        
    }()
    

    func setupImages(_ images: [UIImage]){

        for i in 0..<images.count {
            let imageView = UIImageView()
            imageView.image = images[i]
            let yPosition = 690 * CGFloat(i)
            imageView.frame = CGRect(x: 0, y: yPosition, width: 320, height: 690)
            imageView.contentMode = .scaleAspectFit
            scrollView.contentSize.height = 690 * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        let imageArray = [UIImage(named:"pic1"), UIImage(named: "pic2"), UIImage(named: "pic3"), UIImage(named: "pic4")]

        setupImages(imageArray as! [UIImage])
    }
    
    @IBAction func commentPressed(_ sender: UIButton) {

        let funFacts = ["I have a dog named Benji!", "I went to boarding school!", "I am learning how to do a one-arm push up!", "I'm learning how to drive! I'm not very good... :(", "I want to study business in college!", "I'm kinda good at cooking", "my favorite food is chicken fried rice"]
        let num = Int.random(in: 0 ..< funFacts.count)
        caption.text = funFacts[num]
    }
    

}

