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

class SwiftBetaTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let dataSource: [Device]
    
    init(dataSource: [Device]) {
        self.dataSource = dataSource
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwiftBetaCustomCell", for: indexPath) as! SwiftBetaCustomCell
        
        let model = dataSource[indexPath.row]

        cell.configure(model: model)
        
        return cell
    }
}
