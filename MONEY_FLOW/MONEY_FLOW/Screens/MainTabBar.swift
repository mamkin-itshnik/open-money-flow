//
//  MainTabBar.swift
//  MONEY_FLOW
//
//  Created by Евгений on 07.01.2022.
//

import UIKit


class MainTabBar: UITabBarController, UITabBarControllerDelegate {
    
    private var _controllers: [UIViewController]? = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        addScreen(controller: HistoryOfRecordScreen(), itemName: "История")
        addScreen(controller: HistoryOfRecordScreen(), itemName: "Затычка")
        addScreen(controller: HistoryOfRecordScreen(), itemName: "Затычка 2")
        addScreen(controller: HistoryOfRecordScreen(), itemName: "Затычка 3")
        
        self.viewControllers = _controllers
        _controllers = nil
        self.tabBar.unselectedItemTintColor = .red
    }
    
    func addScreen(controller: UIViewController, itemName: String) {
        let item = HistoryOfRecordScreen()
        let icon = UITabBarItem(title: itemName, image: UIImage(named: "someImage.png"), selectedImage: UIImage(named: "otherImage.png"))
        item.tabBarItem = icon
        
        _controllers?.append(item)
    }

    //Delegate methods
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true
    }
}
