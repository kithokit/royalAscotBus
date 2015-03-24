//
//  FirstViewController.swift
//  RoyalAscotBus
//
//  Created by Kit on 24/3/15.
//  Copyright (c) 2015 Kit. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    
    var tableData = ["9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56","9:30", "9:45", "9:56"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return tableData.count
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell: ColvwCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as ColvwCell
        cell.time.text = tableData[indexPath.row]
        return cell
    }
    
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath){
        println("Cell \(indexPath.row)")
    }




}

