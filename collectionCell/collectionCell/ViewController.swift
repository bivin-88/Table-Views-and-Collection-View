//
//  ViewController.swift
//  collectionCell
//
//  Created by Bivin Joseph on 18/01/24.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    
    
    
    @IBOutlet var table : UITableView!
    
dd
    override func viewDidLoad() {
        super.viewDidLoad()
        models.append(Model(text: "first", imageName: "car1"))
        models.append(Model(text: "second", imageName: "car2"))
        models.append(Model(text: "third", imageName: "car3"))
        models.append(Model(text: "fourth", imageName: "car4"))
        models.append(Model(text: "first", imageName: "car1"))
        models.append(Model(text: "second", imageName: "car2"))
        models.append(Model(text: "third", imageName: "car3"))
        models.append(Model(text: "fourth", imageName: "car4"))
        models.append(Model(text: "first", imageName: "car1"))
        models.append(Model(text: "second", imageName: "car2"))
        models.append(Model(text: "third", imageName: "car3"))
        models.append(Model(text: "fourth", imageName: "car4"))
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }


}
struct Model{
    let text : String
    let imageName : String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

