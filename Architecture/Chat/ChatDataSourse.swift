//
//  ChatDataSourse.swift
//  Architecture
//
//  Created by 123 on 02.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit

class ChatDataSourse: NSObject, UITableViewDataSource {
    var dataProvider: ChatDataProvidable
    let constructor = ChatCellConstructor()
    
    init(dataProvider: ChatDataProvidable) {
        self.dataProvider = dataProvider
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataProvider.numberOfSections()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return constructor.getCell(by: dataProvider.getMessage(by: indexPath))
    }
    
}
