//
//  DescriptionViewController.swift
//  TwoScreenApp
//
//  Created by COBE Osijek on 17/07/2017.
//  Copyright © 2017 COBE Osijek. All rights reserved.
//

import UIKit

class DescriptionViewController: UIViewController {
    
    var name: String = ""
    var surname: String = ""

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "Welcome \(name) \(surname)"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
