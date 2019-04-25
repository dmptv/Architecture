//
//  ChatCellConstuctor.swift
//  Architecture
//
//  Created by 123 on 13.04.2019.
//  Copyright © 2019 KaVa. All rights reserved.
//

import UIKit.UITableViewCell

class ChatCellConstructor {
    func getCell(by model: Message) -> UITableViewCell {
        switch model.type {
        case .text:
            let cell = UITableViewCell()
            cell.textLabel?.text = model.text
            return cell
        default:
            return UITableViewCell()
        }
    }
}
