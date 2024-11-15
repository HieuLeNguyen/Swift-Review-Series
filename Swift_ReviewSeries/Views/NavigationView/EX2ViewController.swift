//
//  EX2ViewController.swift
//  Swift_ReviewSeries
//
//  Created by Nguyễn Văn Hiếu on 15/11/24.
//

import UIKit

class EX2ViewController: UIViewController {
    
    // MARK: - Variables
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("EX2", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBlue
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
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
