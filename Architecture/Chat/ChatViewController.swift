//
//  ViewController.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textfield: UITextField!
    
    private lazy var controller: ChatController = ChatController(viewControler: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        controller.viewDidLoad()
    }

    @IBAction func sendButtonClicked() {
        let text = textfield.text
        controller.sendButtonClicked(with: text) 
    }
    
    func showAlert(with title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OkAction = UIAlertAction(title: "OK", style: .default) { (action) in }
        alertController.addAction(OkAction)
        present(alertController, animated: true, completion: nil)
    }

}

