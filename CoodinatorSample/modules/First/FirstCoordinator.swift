//
//  FirstCoordinator.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import UIKit

// 遷移だけする人
struct FirstCoordinator {
    
    let currentVC: FirstViewController
    
    func push() {
        let nextVC = SecondViewController.viewController()
        currentVC.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    func pop() {
        currentVC.navigationController?.popViewController(animated: true)
    }
}
