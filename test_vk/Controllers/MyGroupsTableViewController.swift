//
//  MyGroupsTableViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 02.03.2021.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {

    var groups: [String] = ["First"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Segues
    
    @IBAction func unwindSeguesFromAllGroups(_ sender: UIStoryboardSegue) {
        print(#function)
        guard
            let controller = sender.source as? GroupsTableViewController,
            let indexPath = controller.tableView.indexPathForSelectedRow
        else {
            return
        }
        
        let group = controller.groups[indexPath.row]
        print(group)
        
        if !groups.contains(group) {
            groups.append(group)
            tableView.reloadData()
        }
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupRow", for: indexPath) as! GroupRowViewCell

        cell.titleLabel.text = groups[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
