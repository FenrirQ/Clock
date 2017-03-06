//
//  ViewController.swift
//  Clock
//
//  Created by Quang Ly Hoang on 8/6/16.
//  Copyright © 2016 FenrirQ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timelbl: UILabel!
    var timer = NSTimer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
        timer = NSTimer.scheduledTimerWithTimeInterval(60, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func update() {
        let realTime = NSDateFormatter.localizedStringFromDate(NSDate(), dateStyle: .NoStyle, timeStyle: .ShortStyle)
        timelbl.text = realTime
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

