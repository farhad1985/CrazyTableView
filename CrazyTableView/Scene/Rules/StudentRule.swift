//
//  StudentRule.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

struct StudentRule: CellRuleable {
    
    func isMatch(personType: PersonType) -> Bool {
        return personType == .student
    }
    
    func getCell(_ tableView: UITableView,
                 at indexPath: IndexPath,
                 person: Person) -> UITableViewCell {
        
        let cell: StudentCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.config(person: person)
        return cell 
    }
}
