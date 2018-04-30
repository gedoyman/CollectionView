//
//  ItemCollectionViewCell.swift
//  CollectionView
//
//  Created by Hendra on 4/19/18.
//  Copyright © 2018 Hendra. All rights reserved.
//

import UIKit

class ItemCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var tittleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var item:Item?
    
    func setItem(_ item:Item){
        
        // Keep track of the item that gets passed in
        self.item = item
        
        
        imageView.image = UIImage(named: item.itemImage)
        tittleLabel.text = item.itemName
        priceLabel.text = String(item.itemPrice)
        
        
    }
    
}
