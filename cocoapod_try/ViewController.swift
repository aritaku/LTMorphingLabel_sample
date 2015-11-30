//
//  ViewController.swift
//  cocoapod_try
//
//  Created by 有村琢磨 on 2015/11/29.
//  Copyright © 2015年 有村琢磨. All rights reserved.
//

import UIKit
import LTMorphingLabel

class ViewController: UIViewController, LTMorphingLabelDelegate {
    
    var textArray = ["おまってぃー", "ありたく", "くーちゃん", "しゅば"]
    var i = 0
    
    var text:String {
        get {
            if i >= textArray.count {
                i = 0
            }
            return textArray[i++]
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    @IBOutlet var label: LTMorphingLabel!
    
    func changeText(sender: AnyObject) {
        label.text = text
    }
    
    @IBAction func segmentChanged(sender: UISegmentedControl) {
        let seg = sender
        switch seg.selectedSegmentIndex {
        case 0:
            self.label.morphingEffect = .Anvil
        case 1:
            self.label.morphingEffect = .Burn
        case 2:
            self.label.morphingEffect = .Evaporate
        case 3:
            self.label.morphingEffect = .Scale
        case 4:
            self.label.morphingEffect = .Fall
        default:
            self.label.morphingEffect = .Pixelate
        }
        self.changeText(sender);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

