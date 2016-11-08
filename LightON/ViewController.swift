//
//  ViewController.swift
//  LightON
//
//  Created by Doãn Tuấn on 11/8/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var check :Bool!
    
    @IBOutlet weak var buttonLight: UIButton!
    
    @IBAction func tapLight(_ sender: UIButton) {
        if  !check
            {
                buttonLight.setImage(UIImage(named: "lightOn.png"), for: UIControlState.normal)
                    check = true
            }else
            {
                
                buttonLight.setImage(UIImage(named: "lightOff.png"), for: UIControlState.normal)
                check = false
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        check = false
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Check flash on iphone device
    func noFlashAvailable() {
        
        let alert = UIAlertController(title: "Unsupported Device", message: "Your device does not have a torch/flash!", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }

}

