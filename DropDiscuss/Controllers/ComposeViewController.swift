//
//  ComposeViewController.swift
//  DropDiscuss
//
//  Created by Avijeet Sachdev on 5/4/19.
//  Copyright © 2019 Avijeet Sachdev. All rights reserved.
//

import UIKit
import Firebase

class ComposeViewController: UIViewController {

    @IBOutlet weak var composeProfileImage: UIImageView!
    @IBOutlet weak var composeEmail: UILabel!
    @IBOutlet weak var composeMessage: UITextView!
    @IBOutlet weak var composeSubmitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        composeMessage.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBAction func composeCloseButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func composeSubmit(_ sender: Any) {
        if composeMessage.text != nil && composeMessage.text != "Compose message ..." {
            composeSubmitButton.isEnabled = true
            DataService.instance.uploadPosts(withMessage: composeMessage.text, forUID: (Auth.auth().currentUser?.uid)!, withGroupKey: nil) { (isComplete) in
                if isComplete {
                    self.composeSubmitButton.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                }
                else {
                    self.composeSubmitButton.isEnabled = true
                }
            }
        }
    }
}

extension ComposeViewController: UITextViewDelegate {
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.text = ""
    }
}
