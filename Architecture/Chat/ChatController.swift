//
//  ChatController.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

class ChatController: NSObject {
    weak var viewControler: ChatViewController?
    private let dataProvider: ChatDataProvidable = ChatDataProvider()
    private lazy var chatInteractor = ChatInteractor(dataProvider: dataProvider)
    private lazy var dataSource = ChatDataSourse(dataProvider: dataProvider)
    
    init(viewControler: ChatViewController) {
        self.viewControler = viewControler
    }
    
    var tableView: UITableView? {
        return viewControler?.tableView
    }
    
    func delegating() {
        tableView?.delegate = self
        tableView?.dataSource = dataSource
    }
    
    func sendButtonClicked(with text: String?) {
        guard let text = text, !text.isEmpty else {
            viewControler?.showAlert(with: "Ошибка", message: "Поле не заполнено")
            return
        }
        chatInteractor.send(text: text)
        reload()
    }
    
    func viewDidLoad() {
        delegating()
        reload()
    }
    
    private func reload() {
        chatInteractor.fetchMessges()
        tableView?.reloadData()
        viewControler?.textfield.text = nil
    }
}

extension ChatController: UITableViewDelegate {
    
    
    
}
