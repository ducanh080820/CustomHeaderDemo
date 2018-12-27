//
//  TableViewController.swift
//  CustomHeaderDemo
//
//  Created by Duc Anh on 12/27/18.
//  Copyright © 2018 Duc Anh. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet weak var tblItems: UITableView!
    
    var foodItems = ["Milk", "Egg", "Cheese", "Oil", "Flour"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let headerNib = UINib.init(nibName: "DemoHeaderView", bundle: Bundle.main)
        tblItems.register(headerNib, forHeaderFooterViewReuseIdentifier: "DemoHeaderView")
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodItems.count
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DemoHeaderView") as! DemoHeaderView
        headerView.label.text = "Food"
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = foodItems[indexPath.row]
        
        return cell
    }

}
