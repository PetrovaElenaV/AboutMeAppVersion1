//
//  InfoViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 10.09.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var userLabel: UILabel!
    
    // MARK: - Properties
    public var user = ""
    
    private var myName = Person.getPerson
    
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
        userLabel.text = "\(user) \r Давай познакомимся,\r меня зовут\r \(myName.fullName) "
    }
}
// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
