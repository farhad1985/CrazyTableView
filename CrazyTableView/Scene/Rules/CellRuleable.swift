//
//  CellRuleable.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

protocol CellRuleable {
    
    func isMatch(personType: PersonType) -> Bool
    
    func getCell(_ tableView: UITableView,
                 at indexPath: IndexPath,
                 person: Person) -> UITableViewCell
}
