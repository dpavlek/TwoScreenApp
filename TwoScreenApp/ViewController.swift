//
//  ViewController.swift
//  TwoScreenApp
//
//  Created by COBE Osijek on 17/07/2017.
//  Copyright © 2017 COBE Osijek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var surnameLabel: UITextField!
    
    let descSegueIdentifier = "descriptionSegue"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == descSegueIdentifier {
            if let destinationViewController = segue.destination as? DescriptionViewController {
                destinationViewController.name = nameLabel.text!
                destinationViewController.surname = surnameLabel.text!
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            guard let firstName = nameLabel.text, !firstName.isEmpty else {
                return false
            }
            guard let lastName = surnameLabel.text, !lastName.isEmpty else {
                return false
            }
            return true
    }
}
