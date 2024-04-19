//
//  SecondViewController.swift
//  TabBarController
//
//  Created by Palliboina on 19/04/24.
//

import UIKit

class SecondViewController: UIViewController {

    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func increaseBadeValue(_ sender: UIButton) {
        if let tab = self.tabBarItem {
            tab.badgeValue = String(counter)
        }
        counter += 1
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
