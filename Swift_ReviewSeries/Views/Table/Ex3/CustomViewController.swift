//
//  CustomViewController.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 16/11/24.
//

import UIKit

class CustomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Variables
    private let tableView: UITableView = {
        let _tableView = UITableView()
        _tableView.backgroundColor = UIColor(red: 12/255, green: 5/255, blue: 23/255, alpha: 1)
        return _tableView
    }()
    
    var data: [CustomCellModel] = [
        CustomCellModel(
            avatar: UIImage(named: "avt") ?? UIImage() ,
            title: "Nguyễn Văn Anh Nguyễn Văn Anh Nguyễn Văn Anh",
            description: "Đây là mô tả ngắn gọn cho tin nhắn.",
            status: .sent,
            date: "17/11",
            verify: true
        ),
        CustomCellModel(
            avatar: UIImage(named: "avt") ?? UIImage() ,
            title: "Trần Thị Binh",
            description: "Đây là một tin nhắn đã được xem.",
            status: .viewed,
            date: "16/11",
            verify: false
        ),
        CustomCellModel(
            avatar: UIImage(named: "avt") ?? UIImage() ,
            title: "Lê Văn Cuong",
            description: "Tin nhắn đã được nhận.",
            status: .received,
            date: "15/11",
            verify: true
        ),
        CustomCellModel(
            avatar: UIImage(named: "avt") ?? UIImage() ,
            title: "Phạm Minh Duong",
            description: "Thông báo mới từ hệ thống.",
            status: .notifi,
            date: "14/11",
            verify: false
        )
    ]

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identify)
        tableView.dataSource = self
        tableView.delegate = self
        /// Yêu cầu được chỉnh sửa để có thể sử dụng insert
//        tableView.isEditing = true
    }
    
    // MARK: - SetupViews
    private func setupViews() {
        view.backgroundColor = UIColor(red: 12/255, green: 5/255, blue: 23/255, alpha: 1)
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identify, for: indexPath) as! CustomTableViewCell
        // Configuration Cell
        let row = data[indexPath.row]
        cell.config(row.avatar, row.title, row.description, row.date, row.status, row.verify)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } 
//        else if editingStyle == .insert {
//            print("add")
//            let newItem = CustomCellModel(
//                avatar: UIImage(named: "avt") ?? UIImage() ,
//                title: "Nguyễn Văn Anh Nguyễn Văn Anh Nguyễn Văn Anh",
//                description: "Đây là mô tả ngắn gọn cho tin nhắn.",
//                status: .sent,
//                date: "17/11",
//                verify: true
//            )
//            data.insert(newItem, at: indexPath.row)
//
//            tableView.insertRows(at: [indexPath], with: .automatic)
//        }
    }
    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        if indexPath.row % 2 == 0 {
//            return .delete
//        } else {
//            return .insert
//        }
//    }
//    
//    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
//        return true
//    }
}
