//
//  FullNameViewModel.swift
//  MVVM-Demo
//
//  Created by Jan Salvador Sebastian on 12/06/2020.
//  Copyright © 2020 Jan Salvador Sebastian. All rights reserved.
//

import Foundation

class FullNameViewModel {
    private var fullNameModel: FullName
    
    init(fistName: String,lastName: String) {
        self.fullNameModel = FullName(firstName: fistName, lastName: lastName)
    }
    
    var fistName: String { return self.fullNameModel.firstName }
    var lastName: String { return self.fullNameModel.lastName }
    
}
