//
//  ViewController.swift
//  LightON
//
//  Created by Doãn Tuấn on 11/8/16.
//  Copyright © 2016 doantuan. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var check :Bool!
    let avDevice = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
    
    
    @IBOutlet weak var buttonLight: UIButton!
    
    @IBAction func tapLight(_ sender: UIButton) {
        if !check
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


}

