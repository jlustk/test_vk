//
//  GroupsTableViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 02.03.2021.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    var groups: [String] = ["Two", "333"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Segues
    
//    @IBAction func unwindSeguesFromAllGroups(_ sender: UIStoryboardSegue) {
//        print(#function)
//    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupRowNew", for: indexPath) as! AllGroupViewCell
        print(indexPath.row)
        cell.titleNew.text = groups[indexPath.row]
        return cell
    }
}
