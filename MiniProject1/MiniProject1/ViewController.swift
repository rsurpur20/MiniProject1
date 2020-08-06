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

    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.isPagingEnabled = true
        scroll.showsVerticalScrollIndicator = false
        scroll.showsHorizontalScrollIndicator = false
        scroll.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        return scroll
        
    }()
    

    func setupImages(_ images: [UIImage]){

        for i in 0..<images.count {
            let imageView = UIImageView()
            imageView.image = images[i]
            let yPosition = UIScreen.main.bounds.height * CGFloat(i)
            imageView.frame = CGRect(x: 0, y: yPosition, width: scrollView.frame.width, height: scrollView.frame.height)
            imageView.contentMode = .scaleAspectFit
            scrollView.contentSize.height = scrollView.frame.height * CGFloat(i + 1)
            scrollView.addSubview(imageView)
        }
    }
    

    
    @IBAction func commentPressed(_ sender: UIButton) {
        print("button!")
        let funFacts = ["I have a dog named Benji!", "I went to boarding school!", "I am learning how to do a one-arm push up!"]
        let num = Int.random(in: 0 ..< funFacts.count)
        caption.text = funFacts[num]
    }
    
    @IBAction func searchPressed(_ sender: UIButton) {
        print("hellop!")
    }
    @IBAction func personPressed(_ sender: UIButton) {
        print("yerrr")
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print("yerrr")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        let imageArray = [UIImage(named:"pic1"), UIImage(named: "pic2")]

        setupImages(imageArray as! [UIImage])
    }
    
}

