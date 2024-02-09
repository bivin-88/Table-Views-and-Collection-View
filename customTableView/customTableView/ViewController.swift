//
//  ViewController.swift
//  customTableView
//
//  Created by Bivin Joseph on 18/01/24.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    struct sunset{
        let title : String
        let imageName : String
        
    }
    let data : [sunset] = [
        sunset(title: "morning run", imageName: "sunset1"),
        sunset(title: "evening sunset", imageName: "sunset2"),
        sunset(title: "vacation photos", imageName: "sunset3"),
        sunset(title: "some random sunset", imageName: "sunset4"),
        sunset(title: "another title", imageName: "sunset5")
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sunset = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CustomTableViewCell
        cell?.label.text=sunset.title
        cell?.iconImageView.image = UIImage(named: sunset.imageName)
        return cell!
    }


}

