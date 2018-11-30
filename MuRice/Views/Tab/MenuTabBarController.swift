//
//  MenuTabBarController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit

class MenuTabBarController: UITabBarController {
    static let shared = MenuTabBarController()

    lazy var main: UIViewController = {
        let root = MainViewController()
        let vc = UINavigationController(rootViewController: root)
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
        return vc
    }()

    lazy var share: UIViewController = {
        let root = ShareViewController()
        let vc = UINavigationController(rootViewController: root)
        vc.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        return vc
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setViewControllers([main, share], animated: true)
    }

    func showMain() {
    }

    func showShare() {
    }
}
