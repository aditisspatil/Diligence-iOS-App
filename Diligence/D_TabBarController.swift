//
//  D_TabBarViewController.swift
//  Diligence
//
//  Created by Aditi Patil on 12/6/22.
//

import UIKit

class D_TabBarViewController: UITabBarController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        UITabBar.appearance().barTintColor = .black
        tabBar.tintColor = .label
        
        setupVCs()

        // Do any additional setup after loading the view.
    }
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ViewController(), title: NSLocalizedString("Home", comment: ""), image: UIImage(systemName: "house")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Record", comment: ""), image: UIImage(systemName: "circle.circle")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Progrss", comment: ""), image: UIImage(systemName: "chart.line.uptrend.xyaxis")!),
            createNavController(for: ViewController(), title: NSLocalizedString("Settings", comment: ""), image: UIImage(systemName: "gearshape")!)
        ]
    }
    
    
    fileprivate func createNavController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
        
          return navController
    }
    

}
