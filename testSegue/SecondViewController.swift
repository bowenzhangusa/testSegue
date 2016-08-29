//
//  SecondViewController.swift
//  testSegue
//
//  Created by Bowen Zhang on 8/29/16.
//  Copyright © 2016 Bowen Zhang. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, ModalViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func buttonTapped(sender: AnyObject) {
    let thirdViewController = storyboard?.instantiateViewControllerWithIdentifier("ThirdViewController") as! ThirdViewController
    thirdViewController.delegate = self
    self.navigationController?.presentViewController(thirdViewController, animated: true, completion: nil)
  }

  func modalViewControllerDismissed() {
    self.navigationController?.popViewControllerAnimated(false)
    self.navigationController?.dismissViewControllerAnimated(true, completion: nil)
  }
}
