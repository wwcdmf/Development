//
//  ManagementUIVC.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//

import UIKit

class ManagementVC: UIViewController {
    

    @IBOutlet weak var trueView: UIView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        ////
//        let pastelView = PastelView(frame: trueView.bounds)
//        pastelView.startPastelPoint = .bottomLeft
//        pastelView.endPastelPoint = .topRight
//
//        pastelView.animationDuration = 3.0
//        // .trueSunset
//        pastelView.setPastelGradient(CustomGradient.wakanda)
//
//        pastelView.startAnimation()
//        trueView.insertSubview(pastelView, at: 0)
        ////
   
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
      // data-connection
            //self.messageArray = returnedMessagesArray.reversed()
     
    
    }
  
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBAction func AnnouncementsEdit(_ sender: Any) {
      
                let ManagementAnnouncmentsVC = storyboard?.instantiateViewController(withIdentifier: "ManagementAnnouncmentsVC")
        present(ManagementAnnouncmentsVC!, animated: true, completion: nil)
    }
    
    @IBAction func setupBtnPressed(_ sender: Any) {
    }
   
    

////////////////////////////////////////////////////////////////////

}

extension ManagementVC: UITableViewDelegate, UITableViewDataSource {
    
    
   
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return count of an arrary when handling data
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LManagerCell") as? LManagerCell else { return UITableViewCell() }
        let defaultImage = UIImage(named: "estimoteBlueBeacon")!
        let defaultUID = "alkf-dfa-dfa-6969"
        
       
        cell.configureCell(beaconImage: defaultImage, beaconUID: defaultUID)
    
        return cell
    }
    
}


