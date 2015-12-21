//
//  ViewController.swift
//  zoo
//
//  Created by lee on 15/12/5.
//  Copyright © 2015年 lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var yeahOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    let offset=4

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yeahOfBirth.resignFirstResponder();
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        yeahOfBirth.resignFirstResponder();
        if let year = Int(yeahOfBirth.text!) {
             let imgNumber=(year-offset) % 12
            image.image=UIImage(named: String(imgNumber))
        }else{
         //
        }
    }

}

