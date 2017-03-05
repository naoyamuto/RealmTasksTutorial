//
//  ViewController.swift
//  RealmTasksTutorial
//
//  Created by Naoya Muto on 2017/03/05.
//  Copyright © 2017年 Naoya Muto. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        title = "My Tasks"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
}

// MARK: Model

final class TaskList: Object {
    dynamic var text = ""
    dynamic var id = ""
    let items = List<Task>()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

final class Task: Object {
    dynamic var text = ""
    dynamic var completed = false
}
