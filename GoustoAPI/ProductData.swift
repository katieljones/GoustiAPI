//
//  ProductData.swift
//  GoustoAPI
//
//  Created by Katie Jones on 15/10/2020.
//  Copyright © 2020 Katie Jones. All rights reserved.
//
import UIKit
import Foundation
class ProductData: NSObject, UITableViewDataSource {
    
    var products = [Prod]()

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return products.count
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if products.count > 0 && indexPath.row < products.count {
        cell.textLabel?.text = products[indexPath.row].title
        }
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return products.count > 0 ? 1 : 0
        
    }
}
