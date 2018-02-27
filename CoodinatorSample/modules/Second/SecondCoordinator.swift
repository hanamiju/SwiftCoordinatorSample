//
//  SecondCoordinator.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

struct SecondCoordinator {
    
    let currentVC: UIViewController
    
    func push() {
        let nextVC = FirstViewController.viewController()
        currentVC.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func pop() {
        currentVC.navigationController?.popViewController(animated: true)
    }
}
