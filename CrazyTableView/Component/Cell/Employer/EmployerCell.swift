//
//  EmployerCell.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

class EmployerCell: UITableViewCell, Reusable {
    
    @IBOutlet weak var title: UILabel?
    
    func config(person: Person) {
        title?.text = person.name
    }
}
