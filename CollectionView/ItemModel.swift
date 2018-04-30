//
//  ItemModel.swift
//  CollectionView
//
//  Created by Hendra on 4/19/18.
//  Copyright © 2018 Hendra. All rights reserved.
//

import Foundation

class ItemModel {
    
    func getItem() -> [Item]{
        
        // Declare array to store generated item
        var generatedItemArray = [Item]()
        
        // Create object
        let itemObj1  = Item()
        itemObj1.itemName = "Product 1"
        itemObj1.itemImage = "card1"
        itemObj1.itemPrice = 12000
        itemObj1.itemShortDesc = "Product short desc"
        itemObj1.itemLongDesc = "Product long description. Product long description. Product long description. Product long description."
        
        generatedItemArray.append(itemObj1)
        
        let itemObj2  = Item()
        itemObj2.itemName = "Product 2"
        itemObj2.itemImage = "card2"
        itemObj2.itemPrice = 32000
        itemObj2.itemShortDesc = "Product 2 short desc"
        itemObj2.itemLongDesc = "Product 2 long description. Product 2 long description. Product 2 long description. Product 2 long description."
        
        generatedItemArray.append(itemObj2)
        
        
        let itemObj3  = Item()
        itemObj3.itemName = "Product 3"
        itemObj3.itemImage = "card3"
        itemObj3.itemPrice = 62000
        itemObj3.itemShortDesc = "Product 3 short desc"
        itemObj3.itemLongDesc = "Product 3 long description. Product 3 long description. Product 3 long description. Product 3 long description."
        
        generatedItemArray.append(itemObj3)
        
        let itemObj4  = Item()
        itemObj4.itemName = "Product 3"
        itemObj4.itemImage = "card3"
        itemObj4.itemPrice = 62000
        itemObj4.itemShortDesc = "Product 3 short desc"
        itemObj4.itemLongDesc = "Product 3 long description. Product 3 long description. Product 3 long description. Product 3 long description."
        
        generatedItemArray.append(itemObj4)
        
        let itemObj5  = Item()
        itemObj5.itemName = "Product 3"
        itemObj5.itemImage = "card3"
        itemObj5.itemPrice = 62000
        itemObj5.itemShortDesc = "Product 3 short desc"
        itemObj5.itemLongDesc = "Product 3 long description. Product 3 long description. Product 3 long description. Product 3 long description."
        
        generatedItemArray.append(itemObj5)
        
        let itemObj6  = Item()
        itemObj6.itemName = "Product 3"
        itemObj6.itemImage = "card3"
        itemObj6.itemPrice = 62000
        itemObj6.itemShortDesc = "Product 3 short desc"
        itemObj6.itemLongDesc = "Product 3 long description. Product 3 long description. Product 3 long description. Product 3 long description."
        
        generatedItemArray.append(itemObj6)
        
        let itemObj7  = Item()
        itemObj7.itemName = "Product 3"
        itemObj7.itemImage = "card3"
        itemObj7.itemPrice = 62000
        itemObj7.itemShortDesc = "Product 3 short desc"
        itemObj7.itemLongDesc = "Product 3 long description. Product 3 long description. Product 3 long description. Product 3 long description."
        
        generatedItemArray.append(itemObj7)
        
        return generatedItemArray
        
    }
    
}
