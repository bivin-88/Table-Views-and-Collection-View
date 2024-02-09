//
//  ViewController.swift
//  tableView
//
//  Created by Bivin Joseph on 18/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let data = ["one", "two", "three", "if data is more than one line cell then the should automatically adjust its height"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier:"cell")
        self.tableView.delegate=self
        self.tableView.dataSource=self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell{
            cell.titleLbl.text = self.data[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
}

