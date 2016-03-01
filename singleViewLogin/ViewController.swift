//
//  ViewController.swift
//  singleViewLogin
//
//  Created by Carl Wall on 2/16/16.
//  Copyright © 2016 Timpanogos Digital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewDidAppear(animated: Bool)  {
    self.performSegueWithIdentifier("loginView", sender: self);
    }
    
}

