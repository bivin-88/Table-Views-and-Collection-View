//
//  ViewController.swift
//  searchableTableView
//
//  Created by Bivin Joseph on 19/01/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UITextFieldDelegate {
    
    @IBOutlet var table: UITableView!
    @IBOutlet var textfield: UITextField!
    
    var data = [String]()
    var filteredData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self
        table.dataSource = self
        textfield.delegate = self
        setUpData()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let text = (textField.text as NSString?)?.replacingCharacters(in: range, with: string) {
            filterText(text)
        }
        return true
    }
    
    func filterText(_ query: String) {
        filteredData = data.filter { $0.lowercased().starts(with: query.lowercased()) }
        table.reloadData()
    }
    
    private func setUpData() {
        data = ["John", "Sam", "Sara", "George", "Ron", "Liam", "Kiara", "Jenny", "Luke", "Kevin", "Femina", "Luke", "Zach", "Briana"]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.isEmpty ? data.count : filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let displayedText = filteredData.isEmpty ? data[indexPath.row] : filteredData[indexPath.row]
        cell.textLabel?.text = displayedText
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}

