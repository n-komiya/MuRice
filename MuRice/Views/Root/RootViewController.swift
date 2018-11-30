//
//  RootViewController.swift
//  MuRice
//
//  Created by 古宮 伸久 on 2018/11/30.
//  Copyright © 2018年 Yumemi. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    private var current: UIViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        transition(to: MenuTabBarController())
    }

    func transition<Target: UIViewController>(to viewController: Target, completion: ((Target) -> Void)? = nil) {
        guard current !== viewController else {
            return
        }
        if let current = current {
            current.willMove(toParentViewController: nil)
            current.view.removeFromSuperview()
            current.removeFromParentViewController()
        }
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParentViewController: self)
        current = viewController

        completion?(viewController)
    }

    func showMain() {
        switch current {
        case let tab as MenuTabBarController:
            tab.showMain()
        default:
            let tab = MenuTabBarController.shared
            transition(to: tab) {
                $0.showMain()
            }
        }
    }
}
