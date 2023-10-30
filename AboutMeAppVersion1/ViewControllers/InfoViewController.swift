//
//  InfoViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 28.09.2023.
//

import UIKit

final class InfoViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var BioButton: UIBarButtonItem!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surenameLabel: UILabel!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    // MARK: - Properties
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
    var person: Person!
    private let info = Person.getPerson
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: secondaryColor, bottomColor: primaryColor)
        nameLabel.text = person.name
        surenameLabel.text = person.surename
        cityLabel.text = person.city
        ageLabel.text = person.age
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.info = info
    }
}
