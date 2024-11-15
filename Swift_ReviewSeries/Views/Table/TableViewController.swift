//
//  TableViewController.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 15/11/24.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Variables
    private var items = [
        "Tạo Bảng cơ bản",
        "Tạo Bảng tuỳ chỉnh cell"
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(EX3TableViewCell.nib(), forCellReuseIdentifier: EX3TableViewCell.identifier)
        
        // add right item button and title
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
        self.navigationItem.title = "Swift Review Series"
    }
    
    // TODO: Add Item
    @objc func addItem() {
        print("add items")
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: EX3TableViewCell.identifier, for: indexPath) as! EX3TableViewCell
        // Configure the cell...
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = items[indexPath.row]
        cell.imageView?.image = UIImage(systemName: "table")

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // TODO: Tasks
    /// + Tạo bảng cơ bản với một viewcontroller
    /// + Tạo bảng tuỳ chỉnh với một viewcontroller
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}
