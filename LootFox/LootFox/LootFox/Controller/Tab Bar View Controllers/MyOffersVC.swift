//
//  MyOffersVC.swift
//  LootFox
//
//  Created by Landon Carr on 7/10/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit


class MyOffersVC: UIViewController {

    
    @IBOutlet var trueView: UIView!
    @IBOutlet weak var offersTableView: UITableView!
    @IBOutlet weak var profileImage: UIImageView!

    //DataToPass
    
    var selectedDataArray = [Any?]()
    var contentViewHeight: CGFloat?
 
    //
    
 
   //Data Loaded Toggle Variables. When to Load
    var dataLoaded = false
   //
    
   

    //
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
     
        
        offersTableView.separatorStyle = .none
        offersTableView.delegate = self
        offersTableView.dataSource = self
       

          self.offersTableView.reloadData()
        ////
//        let pastelView = PastelView(frame: trueView.bounds)
//        pastelView.startPastelPoint = .bottomLeft
//        pastelView.endPastelPoint = .topRight
//        
//        pastelView.animationDuration = 3.0
//        
//        pastelView.setPastelGradient(CustomGradient.trueSunset)
//        
//        pastelView.startAnimation()
//        trueView.insertSubview(pastelView, at: 0)
        ////
        profileImage.isUserInteractionEnabled = true
        profileImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.ProfileSegue)))
    
        //
     
    }


    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      
        self.offersTableView.reloadData()
       
        print("\(self.dataLoaded): PHASE 0")
        if self.dataLoaded == false {
         DataService.instance.getCurrentUser { (userData) in
            
            print("LOADING USER DATA INTO MYOFFERS")
            
          self.dataLoaded.toggle()
            print("\(self.dataLoaded): PHASE 1")
            self.profileImage.image = userData.profileImageload
        }
        }
    }
}



extension MyOffersVC {

    @objc func ProfileSegue() {
    let SettingsVC = storyboard?.instantiateViewController(withIdentifier: "SettingsVC")
    present(SettingsVC!, animated: true, completion: nil)
    }
}

/////////////

//extension MyOffersVC: UITableViewDelegate, UITableViewDataSource {
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        //return count of an arrary when handling data
//        return DataTest().adArray.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        guard let cell = offersTableView.dequeueReusableCell(withIdentifier: "OfferCell") as? OfferCell else { return UITableViewCell() }
//        
//     // Load Data
//    let companyLogoTest = UIImage(named: "testLogo")
//    let companyNameTest = DataTest().adArrayNames[indexPath.row]
//    let adResult = DataTest().adArray[indexPath.row]
//    let advertismentPostTimeStampTest = DataTest().adArrayTimes[indexPath.row]
//    let advertisementExpireTest = "12-31-2018"
//        
//    cell.configureCell(companyName: companyNameTest, companyLogo: companyLogoTest!, advertisement: adResult!, advertisementPostTimeStamp: advertismentPostTimeStampTest, advertisementURL: "", advertisementExpire: advertisementExpireTest, advertisementBlip: "")
//        
//        
//        
//        
//                    return cell
//        
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//        return  525
//    }
//    
//  ///////////
//
//    
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("You selected cell #\(indexPath.row)!")
//
//
//        // Get Cell Label text here and storing it to the variable
//        let indexPathVal = offersTableView!.indexPathForSelectedRow! as NSIndexPath
//        print("Currently Index Path: \(indexPathVal)")
//        let currentCell = offersTableView.cellForRow(at: indexPathVal as IndexPath) as! OfferCell
//        print("Current Cell:) \(currentCell)")
//        print("Prior to sendSelectedData is setup: \(currentCell.companyName.text)")
//
//
//        //Storing the data to a string from the selected cell
//        sendSelectedData = currentCell.companyName.text!
//        print("Inside didSelectRowAtFunction: \(sendSelectedData)")
//
//        //Now here I am performing the segue action after cell selection to the other view controller by using the segue Identifier Name
//
//
//        self.performSegue(withIdentifier: "popUpMyOffersSegue", sender: self)
//    }
//    
//   
//    
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if (segue.identifier == "popUpMyOffersSegue") {
//
//            let viewController = segue.destination as! MyOffersLoadVC
//
//            viewController.passedValue = sendSelectedData
//            print("Inside  prepareForSegue Function: \(sendSelectedData)")
//        }
//    }
//func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//
//        if (segue.identifier == "popUpMyOffersSegue") {
//
//            // initialize new view controller and cast it as your view controller
//            let viewController = segue.destination as! MyOffersLoadVC
//
//            // your new view controller should have property that will store passed value
//            viewController.passedValue = sendSelectedData
//
//            print("Inside  prepareForSegue Function: \(sendSelectedData)")
//
//
//        }
//
//    }
//    
//}
    ////////////






//let progressBar = GTProgressBar(frame: self.progressBarView.frame)
//        let progressBar = GTProgressBar(frame: CGRect(x: 0, y: 0, width: self.progressBarView.frame.width, height: self.progressBarView.frame.height))
//
//        progressBar.progress = 0.75
//
////        progressBar.barBorderColor = UIColor(red:0.35, green:0.80, blue:0.36, alpha:1.0)
////        progressBar.barFillColor = UIColor(red:0.35, green:0.80, blue:0.36, alpha:1.0)
////        progressBar.barBackgroundColor = UIColor(red:0.77, green:0.93, blue:0.78, alpha:1.0)
//
//
//        //// PURPLE
//        progressBar.barBorderColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 1)
//        progressBar.barBackgroundColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 0.6157159675)
//        progressBar.barFillColor = #colorLiteral(red: 0.5098039216, green: 0.3843137255, blue: 1, alpha: 1)
//        progressBar.barBorderWidth = 0.0
//        progressBar.barFillInset = 0.0
//
//        /// WHitE FLIP
//
//
//
//       // progressBar.labelTextColor = UIColor(red:0.35, green:0.80, blue:0.36, alpha:1.0)
//        //progressBar.progressLabelInsets = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
//       // progressBar.font = UIFont.boldSystemFont(ofSize: 18)
//        //progressBar.labelPosition = GTProgressBarLabelPosition.right
//        progressBar.barMaxHeight = 20
//        progressBar.displayLabel = false
//       // progressBar.direction = GTProgressBarDirection.anticlockwise
//        progressBar.direction = GTProgressBarDirection.clockwise
//        progressBar.cornerRadius = progressBar.barMaxHeight! / 2
//
//
//        progressBarView.addSubview(progressBar)
//
//
//

//
