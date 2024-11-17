import UIKit

class BaseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - Variables
    private let baseTableView: UITableView = {
        let _tableView = UITableView()
        return _tableView
    }()
    
    private var items = ["A", "B", "C", "D"]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        baseTableView.register(BaseTableViewCell.nib(), forCellReuseIdentifier: BaseTableViewCell.identifier)
        baseTableView.delegate = self
        baseTableView.dataSource = self
    }
    
    // MARK: - SetupViews
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubview(baseTableView)
        baseTableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            baseTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            baseTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            baseTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            baseTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BaseTableViewCell.identifier, for: indexPath) as! BaseTableViewCell
        // Configuad Cell
        cell.accessoryType = .checkmark
        cell.textLabel?.text = items[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row)"
        return cell
    }
}





