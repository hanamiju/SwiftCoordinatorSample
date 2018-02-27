//
//  SecondViewModel.swift
//  CoodinatorSample
//
//  Created by masao on 2018/02/27.
//  Copyright © 2018年 BANK, Inc. All rights reserved.
//

import Foundation

struct SecondViewModel {
    
    private let coodinator: SecondCoordinator
    let labelStr: String
    
    init(with coodinator: SecondCoordinator, labelStr: String) {
        self.coodinator = coodinator
        self.labelStr = labelStr
    }
    
    func push() {
        coodinator.push()
    }
}
