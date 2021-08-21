//
//  TableViewCell.swift
//  Exercise
//
//  Created by Vasim Khan on 8/19/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var restaurantName: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var bookmarkView: UIView!
    @IBOutlet weak var distanceView: UIView!
    @IBOutlet weak var bgView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        bookmarkView.layer.cornerRadius = 25
        bookmarkView.layer.opacity = 0.8
        
        distanceView.layer.cornerRadius = 5
        distanceView.layer.opacity = 0.8
        
        bgView.layer.cornerRadius = 10
        bgView.layer.shadowColor = UIColor.black.cgColor
        bgView.layer.shadowRadius = 8
        bgView.layer.shadowOpacity = 0.2
    
        mainImage.layer.cornerRadius = 10
        
    }
    
    static let identifier = "tableViewIdentifier"
    
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
    
}
