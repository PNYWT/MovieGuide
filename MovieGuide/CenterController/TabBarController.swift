//
//  TabBarController.swift
//  MovieGuide
//
//  Created by Dev on 8/4/2566 BE.
//

import UIKit

class TabBarController: UITabBarController {
    
    private var arrPage:[UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTab(howMany: 2-1)
    }
    
    private func setupTab(howMany:Int){
        for i in 0...howMany{
            self.setIndexBar(index: i)
        }
        
        self.viewControllers = arrPage
        self.setViewControllers(arrPage, animated: true)
//        self.tabBar.barTintColor = .white
    }
    
    private func setIndexBar(index:Int){
        switch index{
        case 0:
            let vc:NavController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NavHome") as! NavController
            vc.tabBarItem = UITabBarItem.init(title: "Home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
            arrPage.append(vc)
            break
        case 1:
            let vc:NavController = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NavTvShow") as! NavController
            vc.tabBarItem = UITabBarItem.init(title: "TV Show", image: UIImage(systemName: "tv"), selectedImage: UIImage(systemName: "tv.fill"))
            arrPage.append(vc)
            break
        default:
            break
        }
    }
}