//
//  TableView.swift
//  Daroo
//
//  Created by Farhad Faramarzi on 12/10/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) where T: Reusable {
        let nib = UINib(nibName: T.reuseIdentifier, bundle: nil)
        self.register(nib, forCellReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UITableViewCell>(indexPath: IndexPath) -> T where T: Reusable {
        return self.dequeueReusableCell(withIdentifier: T.reuseIdentifier,
                                        for: indexPath) as! T
    }
}

