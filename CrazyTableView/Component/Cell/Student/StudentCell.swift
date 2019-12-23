//
//  StudentCell.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

class StudentCell: UITableViewCell, Reusable {

    @IBOutlet weak var title: UILabel?
    @IBOutlet weak var subTitle: UILabel?

    func config(person: Person) {
        title?.text = person.name
        subTitle?.text = person.type.value
    }
}
