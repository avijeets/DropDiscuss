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
    
    var groupsArray = [Group]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupsTableview.dataSource = self
        groupsTableview.delegate = self
        groupsTableview.backgroundColor = UIColor(hex: "#4F5462")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DataService.instance.REF_GROUPS.observe(.value) { (snapshot) in
            DataService.instance.getAllGroups { (returnedGroupsArray) in
                self.groupsArray = returnedGroupsArray
                self.groupsTableview.reloadData()
            }
        }
    }


}

extension GroupsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupTableViewCell", for: indexPath) as? GroupTableViewCell else { return UITableViewCell() }
        let group = groupsArray[indexPath.row]
        
        cell.configureCell(title: group.groupTitle, description: group.groupDesc, memberCount: group.memberCount)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

