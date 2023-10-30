//
//  BioViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 28.09.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var infoLabel: UILabel!
    
    // MARK: - Properties
    var info: Person!
    
    private let primaryColor = UIColor(
        displayP3Red: 64/255,
        green: 224/255,
        blue: 208/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        displayP3Red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        infoLabel.text = info.title
    }
}
