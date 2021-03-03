//
//  FriendsInfoViewController.swift
//  test_vk
//
//  Created by Igor Lavrynenko on 02.03.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendsInfoViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendInfo", for: indexPath) as! FriesndsInfoViewCell
    
        cell.nameFriend.text = "qweqwe"
        cell.avatarFriend.image = UIImage(systemName: "person.fill.questionmark")
    
        return cell
    }
}
