//
//  PersonType.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import Foundation

enum PersonType: String {
    case student  = "student"
    case employer = "employer"
    case master   = "master"
    
    var value: String {
        return self.rawValue
    }
}
