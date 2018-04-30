//
//  ViewController.swift
//  CollectionView
//
//  Created by Hendra on 4/19/18.
//  Copyright © 2018 Hendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
//class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var model = ItemModel()
    var itemArray = [Item]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Call the getItem method of the item model
        itemArray = model.getItem()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let fullScreen = self.collectionView.frame.size.width
        
        print(fullScreen)
        
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        
        let SCREEN_WIDTH        = Int(UIScreen.main.bounds.size.width)
        let SCREEN_HEIGHT       = Int(UIScreen.main.bounds.size.height)
        let SCREEN_MAX_LENGTH   = Int( max(SCREEN_WIDTH, SCREEN_HEIGHT) )
        
        print("Test : \(SCREEN_MAX_LENGTH)")
        
        // 5s
        // SCREEN_MAX_LENGTH : 568
        //let halfScreen = fullScreen/2.009
        
        // 6
        // SCREEN_MAX_LENGTH : 667
        //let halfScreen = fullScreen/1.712
        
        // 6s
        // SCREEN_MAX_LENGTH : 667
        //let halfScreen = fullScreen/1.712
        
        // 6 plus
        // SCREEN_MAX_LENGTH : 736
        //let halfScreen = fullScreen/1.550
        
        // 7
        // SCREEN_MAX_LENGTH : 667
        //let halfScreen = fullScreen/1.712
        
        // 7s
        // SCREEN_MAX_LENGTH : 667
        //let halfScreen = fullScreen/1.712
        
        // 7 plus
        //let halfScreen = fullScreen/1.57
        
        // 8
        //let halfScreen = fullScreen/1.712
        
        // 8s
        // SCREEN_MAX_LENGTH : 667
        //let halfScreen = fullScreen/1.712
        
        // 8 plus
        //let halfScreen = fullScreen/1.57
        
        // SE
        // SCREEN_MAX_LENGTH : 568
        //let halfScreen = fullScreen/2.009
        
        // X
        // SCREEN_MAX_LENGTH : 812
        //let halfScreen = fullScreen/1.713
        
        var halfScreen = fullScreen/1.713
        var highCell = (self.collectionView.frame.size.height)/1.5
        
        // 5s, SE
        if SCREEN_MAX_LENGTH == 568{
            
            //widthCell : 159.283225485316
            //heighCell : 230.0
            halfScreen = fullScreen/2.009
            highCell = (self.collectionView.frame.size.height)/2
        
        // 6, 6s, 7, 8
        }else if SCREEN_MAX_LENGTH == 667 {
            
            halfScreen = fullScreen/1.712
            highCell = (self.collectionView.frame.size.height)/1.5
        
        // 6 Plus, 7 Plus, 8 Plus
        }else if SCREEN_MAX_LENGTH == 736 {
            
            halfScreen = fullScreen/1.550
            highCell = (self.collectionView.frame.size.height)/1.5
        
        // X
        }else if SCREEN_MAX_LENGTH == 812 {
            
            halfScreen = fullScreen/1.71278
            highCell = (self.collectionView.frame.size.height)/1.5
        }
        
        print("widthCell : \(halfScreen)")
        print("heighCell : \(self.collectionView.frame.size.height/2)")
        
        
        layout.itemSize = CGSize(width: halfScreen, height: highCell)
        
        
        /*
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
        //layout.minimumLineSpacing = 1
        layout.itemSize = CGSize(width: (self.collectionView.frame.size.width)/2, height: self.collectionView.frame.size.height/3)
        */
        
        /*
        let collectionViewWidth = collectionView?.frame.width
        
        let itemWidth = (collectionViewWidth! - leftAndRightPaddings) / numberOfItemsPerRow
        
        let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        */
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionView Protocol Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Get an ItemCollectionCell object
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCollectionViewCell
        
        // Get the item that the collection view is trying to dispay
        let item = itemArray[indexPath.row]
        
        // Set the item to the cell
        cell.setItem(item)
        
        return cell
    }
    
}

