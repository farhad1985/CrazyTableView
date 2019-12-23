//
//  StudentRule.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

struct EmployerRule: CellRuleable {
    
    func isMatch(personType: PersonType) -> Bool {
        return personType == .employer
    }
    
    func getCell(_ tableView: UITableView,
                 at indexPath: IndexPath,
                 person: Person) -> UITableViewCell {
        
        let cell: EmployerCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.config(person: person)
        return cell
    }
}
