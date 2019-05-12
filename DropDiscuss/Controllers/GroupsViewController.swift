//
//  SecondViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 4/30/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var groupsTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupsTableview.dataSource = self
        groupsTableview.delegate = self
        groupsTableview.backgroundColor = UIColor(hex: "#4F5462")
    }


}

extension GroupsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = groupsTableview.dequeueReusableCell(withIdentifier: "GroupTableViewCell", for: indexPath) as? GroupTableViewCell else { return UITableViewCell() }
        cell.configureCell(title: "Hip-hop", description: "For hip-hop fans that like their records heard on vinyl", memberCount: 23)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

