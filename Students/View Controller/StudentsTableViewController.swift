//
//  StudentsTableViewController.swift
//  Students
//
//  Created by Ilgar Ilyasov on 9/17/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import UIKit

class StudentsTableViewController: UITableViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    var students = [Student]() {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)
        cell.textLabel?.text = students[indexPath.row].name
        
        return cell
    }
}
