//
//  SwiftBetaTableViewDataSource.swift
//  UIKit6_UITableUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 15/11/24.
//

import Foundation
import UIKit

let house = [
    Device(title: "Laptop", image: "laptopcomputer"),
    Device(title: "Mac mini", image: "macmini"),
    Device(title: "Mac Pro", image: "macpro.gen3"),
    Device(title: "Pantallas", image: "display.2"),
    Device(title: "Apple TV", image: "appletv")
    
]

let work = [
    Device(title: "iPhone", image: "iphone"),
    Device(title: "iPad", image: "ipad"),
    Device(title: "Airpods", image: "airpods"),
    Device(title: "Apple Watch", image: "applewatch"),
]

let allMyDevices = [house, work]

class SwiftBetaTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let dataSource: [[Device]]
    
    init(dataSource: [[Device]]) {
        self.dataSource = dataSource
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwiftBetaCustomCell", for: indexPath) as! SwiftBetaCustomCell
        
        let model = dataSource[indexPath.section][indexPath.row]
        cell.configure(model: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Device House"
        } else {
            return "Device Work"
        }
    }

    
}
