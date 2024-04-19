//
//  MyTabViewController.swift
//  TabBarController
//
//  Created by Palliboina on 19/04/24.
//

import Foundation
import UIKit

class MyTabViewController : UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        let list = viewControllers!
        let controller = list[0] as! ViewController
        controller.tabBarItem.badgeValue = String(20)
        
        self.selectedIndex = 1
        
        var normalAttributes = AttributeContainer()
        normalAttributes.foregroundColor = UIColor.systemGray
        
        var selectedAttributes = AttributeContainer()
        selectedAttributes.foregroundColor = UIColor.systemBrown
        selectedAttributes.font = UIFont.preferredFont(forTextStyle: .subheadline)
        
        
        let standard = UITabBarAppearance()
        standard.backgroundColor = .systemGray5
        standard.stackedItemPositioning = .centered
        standard.stackedItemWidth = 50
        standard.stackedItemSpacing = 50
        
        standard.stackedLayoutAppearance.normal.iconColor = .systemGray
        standard.compactInlineLayoutAppearance.normal.iconColor = .systemGray   //inline means side by side
        standard.inlineLayoutAppearance.normal.iconColor = .systemGray
        
        if let attr = try? Dictionary(normalAttributes, including: \.uiKit) {
            standard.stackedLayoutAppearance.normal.titleTextAttributes = attr
            standard.compactInlineLayoutAppearance.normal.titleTextAttributes = attr
            standard.inlineLayoutAppearance.normal.titleTextAttributes = attr
        }
        
        standard.stackedLayoutAppearance.selected.iconColor = .systemGreen
        standard.compactInlineLayoutAppearance.selected.iconColor = .systemGreen
        standard.inlineLayoutAppearance.selected.iconColor = .systemGreen
        
        standard.stackedLayoutAppearance.selected.badgeBackgroundColor = .systemTeal
        standard.compactInlineLayoutAppearance.selected.badgeBackgroundColor = .systemTeal
        standard.inlineLayoutAppearance.selected.badgeBackgroundColor = .systemTeal
        
        if let attr = try? Dictionary(selectedAttributes, including: \.uiKit) {
            standard.stackedLayoutAppearance.selected.titleTextAttributes = attr
            standard.compactInlineLayoutAppearance.selected.titleTextAttributes = attr
            standard.inlineLayoutAppearance.selected.titleTextAttributes = attr
        }

        self.tabBar.standardAppearance = standard
        
    }
    
    /*func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //way1
        let list = viewControllers!
        let controller = list[1]
        if controller === viewController {
            print("it is bulletins")
            //print(viewController.tabBarItem.title)
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let controller = viewController as? ThirdViewController {
            let control = controller.myProperty
            if control != 0 {
                return false
            }
        }
        return true
    }*/
}

extension MyTabViewController : UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        //way1
        let list = viewControllers!
        let controller = list[1]
        if controller === viewController {
            print("it is bulletins")
        }
    }
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if let controller = viewController as? ThirdViewController {
            let control = controller.myProperty
            if control != 0 {
                return false
            }
        }
        return true
    }
}
