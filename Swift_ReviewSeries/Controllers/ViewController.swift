//
//  ViewController.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 15/11/24.
//

import UIKit


class ViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    /// Nội dung các bài luyện tập
    private var items = [
        "Ex1: Register init scene (hide)",
        "Ex2: Navigation with View",
        "Ex3: TableViewController & Custom Cell",
        "Ex4: CollectionViewController & Custom Cell",
        "Ex5: IBDesign",
        "Ex6: TabController",
        "Any: Why questions"
        /*
         + ts có nhiều file khi được khởi tạo với pod trong folder project,
         + Codable & Encodable,
         + kn cần khởi tạo method nib
         */
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Basic Series"
        tableView.delegate =  self
        tableView.dataSource = self
    }
    
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 1:
            let vc = EX2ViewController()
            vc.title = "Navigation with view"
            navigationController?.pushViewController(vc, animated: true)
        case 2:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 3:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 4:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 5:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 6:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        case 7:
            let vc = InitViewController()
            navigationController?.pushViewController(vc, animated: true)
        default:
            return
        }
    }
}

