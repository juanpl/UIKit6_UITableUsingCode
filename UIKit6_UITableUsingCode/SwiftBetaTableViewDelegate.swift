//
//  SwiftBetaTableViewDelegate.swift
//  UIKit6_UITableUsingCode
//
//  Created by Juan Pablo Lasprilla Correa on 15/11/24.
//

import Foundation
import UIKit

final class SwiftBetaTableViewDelegate: NSObject, UITableViewDelegate {
    
    //Implement a func that warns us if a cell was push
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]
        print("Cell: \(model.title)")
    }
    
}
