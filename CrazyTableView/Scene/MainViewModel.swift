//
//  MainViewModel.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

struct MainViewModel {
    
    var datasource: [Person] {
        return [
            Person(name: "Farhad", type: .master),
            Person(name: "Sina", type: .student),
            Person(name: "Amir", type: .master),
            Person(name: "Nazi", type: .employer),
            Person(name: "Mohammad", type: .student),
            Person(name: "Mansor", type: .employer),
            Person(name: "Bahar", type: .master),
        ]
    }
}
