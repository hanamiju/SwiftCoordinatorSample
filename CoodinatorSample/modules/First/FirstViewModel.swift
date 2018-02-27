//
//  FirstViewModel.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import Foundation

struct FirstViewModel {
    
    private let coodinator: FirstCoordinator // CoodinatorはViewModelだけが使える
    let labelStr: String
    
    init(with coodinator: FirstCoordinator, labelStr: String) {
        self.coodinator = coodinator
        self.labelStr = labelStr
    }
    
    func push() {
        coodinator.push()
    }
}
