//
//  HomeCeller.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

struct HomeCeller {
    
    private var rules: [CellRuleable] = []
    
    init() {
        rules += [MasterRule()]
        rules += [StudentRule()]
        rules += [EmployerRule()]
    }
    
    func getCell(_ tableView: UITableView,
                 at indexPath: IndexPath,
                 person: Person) -> UITableViewCell {
        
        let cell = rules
            .filter{ $0.isMatch(personType: person.type) }
            .first
        
        guard let _cell = cell else { return UITableViewCell() }
        
        return _cell.getCell(tableView,
                             at: indexPath,
                             person: person)
    }
}
