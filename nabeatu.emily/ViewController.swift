//
//  ViewController.swift
//  nabeatu.emily
//
//  Created by 野崎絵未里 on 2019/10/07.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number:Int = 0
    
    @IBOutlet weak var picture: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plus(_ sender: Any) {
        number = number + 1
        label.text = String(number)
        if number / 10 % 3 == 1 {
            picture.image = UIImage(named: "NYC.jpg")
        } else if number % 3 == 1 {
            picture.image = UIImage(named: "pari.jpg")
        } else {
            picture.image = UIImage(named: "pari2.jpg")
        }
    }
    @IBAction func clear(_ sender: Any) {
        number = 0
        label.text = String(number)
        picture.image = UIImage(named:"pari.jpg")
    }
    

}

