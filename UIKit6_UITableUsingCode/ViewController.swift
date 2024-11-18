//
//  ViewController.swift
//  UIKit6_UITableUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 11/11/24.
//

import UIKit

struct Device {
    let title: String
    let image: String
}

class ViewController: UIViewController{

    private var dataSource: SwiftBetaTableViewDataSource?
    private var delegate: SwiftBetaTableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.dataSource = SwiftBetaTableViewDataSource(dataSource: house)
        self.delegate = SwiftBetaTableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        //register the custom cell
        tableView.register(SwiftBetaCustomCell.self, forCellReuseIdentifier: "SwiftBetaCustomCell")
        view = tableView
    }

}

