//
//  InfoViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 10.09.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var userLabel: UILabel!
    
    var nameText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = nameText + " !  🩵"
    }
}
