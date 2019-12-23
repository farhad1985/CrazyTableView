//
//  ViewController.swift
//  CrazyTableView
//
//  Created by Farhad Faramarzi on 12/23/19.
//  Copyright © 2019 Farhad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView?
    
    private let viewModel = MainViewModel()
    private let homeCeller = HomeCeller()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configTable()
    }
    
    private func configTable() {
        table?.register(MasterCell.self)
        table?.register(StudentCell.self)
        table?.register(EmployerCell.self)
        table?.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.datasource.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = viewModel.datasource[indexPath.row]
        
        return homeCeller.getCell(tableView,
                                  at: indexPath,
                                  person: model)
    }
}

