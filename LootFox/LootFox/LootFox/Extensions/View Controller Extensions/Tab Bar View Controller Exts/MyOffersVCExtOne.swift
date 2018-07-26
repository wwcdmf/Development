//
//  MyOffersVCExtOne.swift
//  LootFox
//
//  Created by Landon Carr on 7/17/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import Foundation
import UIKit



extension MyOffersVC: UITableViewDelegate, UITableViewDataSource {
  

    
// Return of of Sections in the Given Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
// Return X amount of Rows of Data based on the count of an array
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return DataTest().adArray.count
    }
// Returns a cell loaded with data from a predefined Cell.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = offersTableView.dequeueReusableCell(withIdentifier: "OfferCell") as? OfferCell else { return UITableViewCell() }
        
        // Load Data
        let companyLogoTest = UIImage(named: "testLogo")
        let companyNameTest = DataTest().adArrayNames[indexPath.row]
        let adResult = DataTest().adArray[indexPath.row]
        let advertismentPostTimeStampTest = DataTest().adArrayTimes[indexPath.row]
        let advertisementExpireTest = "12-31-2018"
        
        cell.configureCell(companyName: companyNameTest, companyLogo: companyLogoTest!, advertisement: adResult!, advertisementPostTimeStamp: advertismentPostTimeStampTest, advertisementURL: "", advertisementExpire: advertisementExpireTest, advertisementBlip: "")
        
        
        
        
        return cell
        
    }
    
// Returns Cells that have a height of X
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      
        
        let difference = (offersTableView.frame.maxY + offersTableView.frame.midY) / 2
        
  print("\(difference) is the height of the tablView Cell")
        return difference
        
    
    }
    

    
    
// Function for handling when a given cell is selected return the indexPath/ recognize it as "current cell"
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
        
        

        let indexPathValue = offersTableView!.indexPathForSelectedRow! as NSIndexPath
        
        print("Current Index Path: \(indexPathValue)")
        
        let currentCell = offersTableView.cellForRow(at: indexPathValue as IndexPath) as! OfferCell
        print("Current Cell:) \(currentCell)")
        
//        print("Prior to sendSelectedData is setup: \(currentCell.companyName.text ?? "default Value")")
        
        
        //Storing the data to a string from the selected cell
        selectedDataArray.removeAll()
        
        
        let size = selectedDataArray.count
        
        
        print("selectedDataArray before append: \(size)")
        
        selectedDataArray.append(currentCell.advertisement?.image!)
        selectedDataArray.append(currentCell.advertisementBlip?.text!)
        selectedDataArray.append(currentCell.advertisementExpire?.text!)
        selectedDataArray.append(currentCell.advertisementPostTimeStamp?.text!)
        selectedDataArray.append(currentCell.companyName?.text!)
       
        
        print("selectedDataArray after append \(size)")
       
//        print("Inside didSelectRowAtFunction: \(sendSelectedData ?? "default Value")")
        
        //Now here I am performing the segue action after cell selection to the other view controller by using the segue Identifier Name
     
        self.performSegue(withIdentifier: "MyOffersLoadSegue", sender: self)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "MyOffersLoadSegue") {
            
            let viewController = segue.destination as! MyOffersLoadVC
            
            viewController.recievedDataArray = selectedDataArray
            
            
       print("override func prepare called")
   

    }
}


}




extension MyOffersVC {
    
   //// Progress Bar



}
