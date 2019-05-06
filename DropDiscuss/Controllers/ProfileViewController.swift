//
//  ProfileViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/4/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit
import Firebase

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var profileName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.profileName.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func signOutPressed(_ sender: Any) {
        let logoutPopup = UIAlertController(title: "Log out?", message: "Are you sure you want to log out?", preferredStyle: .actionSheet)
        let logoutAction = UIAlertAction(title: "Log out?", style: .destructive) { (button) in
            do {
                try Auth.auth().signOut()
                let authVC = self.storyboard?.instantiateViewController(withIdentifier: "AuthViewController") as? AuthViewController
                self.present(authVC!, animated: true, completion: nil)
            }
            catch {
                print("Error: \(error)")
            }
        }
        logoutPopup.addAction(logoutAction)
        present(logoutPopup, animated: true, completion: nil)
    }
    

}
