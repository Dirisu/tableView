//
//  ViewController.swift
//  table2
//
//  Created by Marvellous Dirisu on 25/05/2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var products: UILabel!
    
    var images = ["Product1","Product2","Product3","Product4","Product5","Product6","Product7","Product8"]
        var labelText = ["Powerbanks","Storage Devices","LED Bulbs","Laptop Bags","Keyboards","Routers","Shoes"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        products.text = "Happy Customer"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        images.count - 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.titleImage.image = UIImage(named: images[indexPath.row])
//        cell.titleLabel.text = labelText[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}

