//
//  MasterRule.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

struct MasterRule: CellRuleable {
    
    func isMatch(personType: PersonType) -> Bool {
        return personType == .master
    }
    
    func getCell(_ tableView: UITableView,
                 at indexPath: IndexPath,
                 person: Person) -> UITableViewCell {
        
        let cell: MasterCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.config(person: person)
        return cell
    }
}
