//
//  FeedVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/1/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class FeedVC: UIViewController  {
   
    
    // Test Data
    @IBOutlet weak var roundedtest: RoundedUIView!
    
    @IBOutlet weak var rightNowView: UIView!
    @IBOutlet weak var rightNowLbl: UILabel!
    @IBOutlet var trueView: UIView!
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var gradientTestView: UIView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       collectionViewTwo.delegate = self
       collectionViewTwo.dataSource = self

//
//       collectionViewOne.delegate = self
//        collectionViewOne.dataSource = self
////
    ////
        let pastelView = PastelView(frame: trueView.bounds)
        pastelView.startPastelPoint = .bottomLeft
        pastelView.endPastelPoint = .topRight
        
        pastelView.animationDuration = 3.0
        // .trueSunset
        pastelView.setPastelGradient(CustomGradient.trueSunset)

        pastelView.startAnimation()
        trueView.insertSubview(pastelView, at: 0)
    ////
    
   
   
        if let layout = collectionViewTwo?.collectionViewLayout as? StaggeredLayout {
            layout.delegate = self
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        ///
        self.rightNowView.alpha = 0.0
        if self.rightNowView.alpha == 0.0 {
            
            UIView.animate(withDuration: 1.5, delay: 0.2, options: .curveEaseOut, animations: {
                self.rightNowView.alpha = 1.0
            }, completion: nil)

    }
        
        
        DataService.instance.getCurrentAnnouncement { (Announcement) in
            self.rightNowLbl.text = Announcement.announcement
        }

    
    
   }
}



extension FeedVC: UICollectionViewDelegate,UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  { if collectionView == self.collectionViewOne {
        
        return DataTest().adArray.count
    } else if collectionView == self.collectionViewTwo {
        return DataTest().adArray.count
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        
        //////////////////   Bottom Collection View   /////////////////////////
        if collectionView == self.collectionViewTwo {
            let cell:bottomFC = (collectionView.dequeueReusableCell(withReuseIdentifier: "bottomFC", for: indexPath) as? bottomFC)!
            
            
            
//let testNameTwo = "Monarch Casino"
            
            let testLogoTwo = UIImage(named: "testLogo")
            
           // let testAdTwo = UIImage(named: "testAd")
           let weekdays = DataTest().weekdays[indexPath.row]
      //   let adNameResult = DataTest().adArrayNames[indexPath.row]
          let adResult = DataTest().adArray[indexPath.row]
           let adTimeResult = DataTest().adArrayTimes[indexPath.row]
            
            
          
            
            cell.configureCell(companyLogoBottom: testLogoTwo!, companyNameBottom: weekdays, companyAdBottom: adResult!, companyPlacementInterval: adTimeResult)
            
            
            
            return cell
            //////////////////   Top Collection View   /////////////////////////
        } else if collectionView == self.collectionViewOne {
            let cell:CasinoTopFeedCell = (collectionView.dequeueReusableCell(withReuseIdentifier: "CasinoTopFeedCell", for: indexPath) as? CasinoTopFeedCell)!
            
          
            let adNameResult = DataTest().adArrayNames[indexPath.row]
            let adResult = DataTest().adArray[indexPath.row]
           // let adTimeResult = DataTest().adArrayTimes[indexPath.row]
            
            let testLogo = UIImage(named: "testLogo")
            
            
            
            cell.configureCell(Logo: testLogo!, Advertisement: adResult!, cName: adNameResult)
            
            
            return cell
        }
        
        return UICollectionViewCell()
        
    }
    
}


extension FeedVC : StaggeredLayoutDelegate {
    
    
    
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
       
            
        
            let base  : UInt32 = 300
            let lower : UInt32 = 1
            let upper : UInt32 = 100
            let randomNumber = (arc4random_uniform(upper - lower) + lower) * 1 + base
            let conversionTypeOne = Int(randomNumber)
            let  randomHeightSelection = conversionTypeOne
            let   conversionHeight = CGFloat(randomHeightSelection)
            
           // print(heightArray.randomElement()
           return conversionHeight
                
                
                //photos[indexPath.item].image.size.height
        
    
    }
    
    
}
    

