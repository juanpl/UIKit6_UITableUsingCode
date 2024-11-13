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

let house = [
    Device(title: "Laptop", image: "laptopcomputer"),
    Device(title: "Mac mini", image: "macmini"),
    Device(title: "Mac Pro", image: "macpro.gen3"),
    Device(title: "Pantallas", image: "display.2"),
    Device(title: "Apple TV", image: "appletv")
    
]

class ViewController: UIViewController, UITableViewDataSource {

    private let devicesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        devicesTableView.backgroundColor = .blue
        devicesTableView.dataSource = self
        devicesTableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        view.addSubview(devicesTableView)
        
        NSLayoutConstraint.activate([
            devicesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            devicesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            devicesTableView.topAnchor.constraint(equalTo: view.topAnchor),
            devicesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        house.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        return cell
    }


}

