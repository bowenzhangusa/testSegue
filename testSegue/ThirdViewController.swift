//
//  ThirdViewController.swift
//  testSegue
//
//  Created by Bowen Zhang on 8/29/16.
//  Copyright © 2016 Bowen Zhang. All rights reserved.
//

import UIKit

protocol ModalViewControllerDelegate
{
  func modalViewControllerDismissed()
}

class ThirdViewController: UIViewController {

  var delegate : ModalViewControllerDelegate?
  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  @IBAction func dismissButtonTapped(sender: AnyObject) {
    self.delegate?.modalViewControllerDismissed()
  }
  /*
  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */

}
