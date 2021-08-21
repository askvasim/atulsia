//
//  ViewController.swift
//  Exercise
//
//  Created by Vasim Khan on 8/19/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
    
    struct dummyData {
        
        
        static let distance = "42 mins"
        static let foodName = "Bake your Day"
        static let restaurantName = "Bakery"
        static let price = "Rs. 150 for one"
        static let address = "Address"
        static let mainImage = #imageLiteral(resourceName: "banner_image")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.distance.text = dummyData.distance
        cell.foodName.text = dummyData.foodName
        cell.restaurantName.text = dummyData.restaurantName
        cell.price.text = dummyData.price
        cell.address.text = dummyData.address
        cell.mainImage.image = dummyData.mainImage
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 320
    }


}

