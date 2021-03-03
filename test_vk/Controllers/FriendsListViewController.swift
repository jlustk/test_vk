//
//  FriendsListViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 02.03.2021.
//

import UIKit

class FriendsListViewController: UITableViewController {
    
    let friends: [String] = ["Anton", "Vasiia", "Fedor"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)

        cell.textLabel?.text = friends[indexPath.row]
        return cell
    }
}
