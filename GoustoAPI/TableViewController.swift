//
//  TableViewController.swift
//  GoustoAPI
//
//  Created by Katie Jones on 15/10/2020.
//  Copyright © 2020 Katie Jones. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    var dataSource = ProductData()

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = dataSource
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
