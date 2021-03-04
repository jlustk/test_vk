//
//  FriendsListViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 02.03.2021.
//

import UIKit

class FriendsListViewController: UITableViewController {
    
    var friends: [UserData] = []
    let ant = UserData(name: "Anton", photo: "image")
    
    friends.append(ant)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath)
        
        let myFriend = friends[indexPath.item]
        
        cell.textLabel.text = myFriend.name
        if 

        cell.textLabel?.text = friends[indexPath.row]
        return cell
    }
}
