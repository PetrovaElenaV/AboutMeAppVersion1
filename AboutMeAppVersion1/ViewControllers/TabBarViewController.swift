//
//  TabBarViewController.swift
//  AboutMeAppVersion1
//
//  Created by Elena Petrova on 24.09.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithOpaqueBackground()
        tabBarAppearance.backgroundColor = .black
        tabBarAppearance.stackedLayoutAppearance.normal.iconColor = .white
        tabBarAppearance.inlineLayoutAppearance.selected.iconColor = .cyan
        tabBar.scrollEdgeAppearance = tabBarAppearance
    }
}
