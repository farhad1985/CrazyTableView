//
//  Reusable.swift
//  Daroo
//
//  Created by Farhad Faramarzi on 12/10/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

protocol Reusable {}

extension Reusable where Self: UIView {
    static var reuseIdentifier: String { return String(describing: self) }
}
